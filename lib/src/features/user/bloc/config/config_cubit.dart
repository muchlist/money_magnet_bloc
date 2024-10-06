import 'package:bloc/bloc.dart';
import 'package:money_magnet_bloc/src/features/user/entity/config.dart';
import 'package:money_magnet_bloc/src/features/user/repo/config_local_repo.dart';

class ConfigCubit extends Cubit<Config> {
  ConfigCubit(this.repo)
      : super(
          const Config(mainPocketID: '00000000000000000000000000'),
        );

  final ConfigLocalRepository repo;
  bool loaded = false;

  // loadUserConfig do load user config from local repository for first time
  void loadUserConfig() async {
    if (!loaded) {
      final savedConfig = await repo.getConfig();
      if (savedConfig != null) {
        loaded = true;
        emit(savedConfig);
      }
    }
  }

  void updateMainPocket(String mainPocketID) async {
    final newState = state.copyWith(mainPocketID: mainPocketID);
    await repo.updateConfig(newState);
    emit(newState);
  }
}
