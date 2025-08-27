// lib/bloc/auth/auth_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = _SignInRequested;

  const factory AuthEvent.signOutRequested() = _SignOutRequested;

  const factory AuthEvent.restoreRequested() = _RestoreRequested;
}
