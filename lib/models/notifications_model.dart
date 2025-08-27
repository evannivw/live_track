import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_track/models/flota_model.dart';

part 'notifications_model.freezed.dart';
part 'notifications_model.g.dart';

@freezed
abstract class NotificationsModel with _$NotificationsModel {
  @JsonSerializable(explicitToJson: true)
  const factory NotificationsModel({
    required String id,
    required String title,
    required String message,
    required String flotaId,
    required String flotaName,
    DateTime? createdAt,
  }) = _NotificationsModel;

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);
}
