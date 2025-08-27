// auth_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_track/blocs/auth_bloc/auth_event.dart';
import 'package:live_track/blocs/auth_bloc/auth_repository_local.dart';
import 'package:live_track/blocs/auth_bloc/auth_state.dart';
import 'package:live_track/enum/auth_type.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryLocal _repo;

  AuthBloc(this._repo) : super(AuthState.empty()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        signInRequested: (email, password) async {
          emit(state.copyWith(authType: AuthType.loading, errorMessage: null));
          try {
            final user = await _repo.signIn(email, password);
            emit(state.copyWith(user: user, authType: AuthType.authenticated));
          } catch (e) {
            emit(
              state.copyWith(
                authType: AuthType.error,
                errorMessage: e.toString(),
              ),
            );
          }
        },
        signOutRequested: () async {
          emit(state.copyWith(authType: AuthType.loading));
          await _repo.signOut();
          emit(AuthState.empty());
        },
        restoreRequested: () async {
          emit(state.copyWith(authType: AuthType.loading));
          final user = await _repo.restore();
          if (user == null) {
            emit(AuthState.empty());
          } else {
            emit(state.copyWith(user: user, authType: AuthType.authenticated));
          }
        },
      );
    });
  }
}
