import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_track/enum/flota_status_type.dart';

part 'flota_model.freezed.dart';
part 'flota_model.g.dart';

@freezed
abstract class FlotaModel with _$FlotaModel {
  @JsonSerializable(explicitToJson: true)
  const factory FlotaModel({
    required String id,
    required String name,
    required FlotaStatusType status,
    required List<double> position,
    DateTime? createdAt,
  }) = _FlotaModel;

  factory FlotaModel.fromJson(Map<String, dynamic> json) =>
      _$FlotaModelFromJson(json);
}
