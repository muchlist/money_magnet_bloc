import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/common/dev/logger.dart';

part 'global_state.dart';
part 'global_cubit.freezed.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(const GlobalState.initial());

  final _log = AppLogger();

  // memicu force logout
  void forceLogout() {
    emit(const GlobalState.forceLogout());
  }

  // memberi signal home perlu di refresh
  void homeNeedRefresh() {
    state.maybeWhen(
      data: (appState) {
        emit(GlobalState.data(appState.copyWith(refreshHome: true)));
      },
      orElse: () {
        emit(
          GlobalState.data(
            AppState.empty().copyWith(refreshHome: true),
          ),
        );
      },
    );
  }

  @override
  void onChange(Change<GlobalState> change) {
    super.onChange(change);
    _log.d("GlobalCubit ->$change");
  }
}
