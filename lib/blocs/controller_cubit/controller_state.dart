import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_track/models/flota_model.dart';
import 'package:live_track/models/lugares_model.dart';
import 'package:live_track/models/notifications_model.dart';

part 'controller_state.freezed.dart';

@freezed
abstract class ControllerState with _$ControllerState {
  @JsonSerializable(explicitToJson: true)
  const factory ControllerState({
    required List<LugaresModel> lugaresList,
    required List<NotificationsModel> notificacionesList,
    required List<FlotaModel> flotasList,
    List<FlotaModel>? searchFlotasList,
    List<LugaresModel>? searchLugaresList,
    List<FlotaModel>? searchNotificacionesList,
  }) = _ControllerState;

  factory ControllerState.empty() =>
      ControllerState(lugaresList: [],notificacionesList: [], flotasList: []);
}
