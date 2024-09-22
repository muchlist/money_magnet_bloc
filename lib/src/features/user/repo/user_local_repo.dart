import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:sembast/sembast.dart';

import '../entity/user.dart';

class UserLocalRepository {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('userProfile');

  UserLocalRepository(this._sembastDatabase);

  Future<void> upsertUserDetail(User user) async {
    final json = user.toJson();
    json['access_token'] = '';
    json['refresh_token'] = '';

    await _store.record('profile').put(
          _sembastDatabase.instance,
          json,
        );
  }

  Future<User?> getUserDetail() async {
    final record = _store.record('profile');
    final recordSnapshot = await record.getSnapshot(_sembastDatabase.instance);
    if (recordSnapshot == null) {
      return null;
    }

    final copiedMap = Map<String, dynamic>.from(recordSnapshot.value);
    return User.fromJson(copiedMap);
  }
}
