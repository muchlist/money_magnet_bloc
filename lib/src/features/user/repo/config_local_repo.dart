import 'package:money_magnet_bloc/src/common/infrastructure/sembast.dart';
import 'package:money_magnet_bloc/src/features/user/entity/config.dart';
import 'package:sembast/sembast.dart';

class ConfigLocalRepository {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('config');

  ConfigLocalRepository(this._sembastDatabase);

  Future<void> updateConfig(Config cfg) async {
    final json = cfg.toJson();

    await _store.record('cfg').put(
          _sembastDatabase.instance,
          json,
        );
  }

  Future<Config?> getConfig() async {
    final record = _store.record('cfg');
    final recordSnapshot = await record.getSnapshot(_sembastDatabase.instance);
    if (recordSnapshot == null) {
      return null;
    }

    final copiedMap = Map<String, dynamic>.from(recordSnapshot.value);
    return Config.fromJson(copiedMap);
  }
}
