import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_track/enum/auth_type.dart';
import 'package:live_track/models/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  @JsonSerializable(explicitToJson: true)
  const factory AuthState({
    required UserModel user,
    required AuthType authType,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.empty() =>
      AuthState(user: UserModel.empty(), authType: AuthType.logOut);
}
