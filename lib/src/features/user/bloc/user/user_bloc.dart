import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/user/service/user_service.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserService _service;

  UserBloc(this._service) : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        // ** Event to check and update authentication status
        checkAndUpdateAuthStatus: (_) async {
          emit(const UserState.loading());
          List<dynamic> results = await Future.wait([
            _service.isSignedIn(),
            _service.isCanRefresh(),
          ]);

          emit((results[0] || results[1])
              ? const UserState.authenticated() // If the user is signed in
              : const UserState.unauthenticated()); // If not signed in
        },
        // ** Event to force the user to become unauthenticated
        forceToUnauthenticated: (_) async {
          emit(const UserState.unauthenticated());
        },
        // ** Event to handle the sign-in process
        signIn: (e) async {
          emit(const UserState.loading());
          final signinResult = await _service.signIn(e.email, e.password);
          if (signinResult.hasError()) {
            emit(UserState.failure(signinResult.message));
            return;
          }
          emit(const UserState.authenticated());
        },
        // ** Event to toggle loading state
        toggleLoading: (_) async {
          emit(state.maybeWhen(
            loading: () => const UserState.initial(),
            orElse: () => const UserState.loading(),
          ));
        },
      );
    });
  }
}
