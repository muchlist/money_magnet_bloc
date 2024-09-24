import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/user/service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _service;

  AuthBloc(this._service) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        // ** Event to check and update authentication status
        checkAndUpdateAuthStatus: (_) async {
          emit(const AuthState.loading());
          List<dynamic> results = await Future.wait([
            _service.isSignedIn(),
            _service.isCanRefresh(),
          ]);

          emit((results[0] || results[1])
              ? const AuthState.authenticated() // If the user is signed in
              : const AuthState.unauthenticated()); // If not signed in
        },
        // ** Event to force the user to become unauthenticated
        forceToUnauthenticated: (_) async {
          emit(const AuthState.unauthenticated());
        },
        // ** Event to handle the sign-in process
        signIn: (e) async {
          emit(const AuthState.loading());
          final signinResult = await _service.signIn(e.email, e.password);
          if (signinResult.hasError()) {
            emit(AuthState.failure(signinResult.message));
            return;
          }
          emit(const AuthState.authenticated());
        },
        // ** Event to toggle loading state
        toggleLoading: (_) async {
          emit(state.maybeWhen(
            loading: () => const AuthState.initial(),
            orElse: () => const AuthState.loading(),
          ));
        },
      );
    });
  }
}
