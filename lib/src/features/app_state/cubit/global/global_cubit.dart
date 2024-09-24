import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.dart';
part 'global_cubit.freezed.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(const GlobalState.initial());

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
}
