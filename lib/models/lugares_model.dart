import 'package:freezed_annotation/freezed_annotation.dart';

part 'lugares_model.freezed.dart';
part 'lugares_model.g.dart';

@freezed
abstract class LugaresModel with _$LugaresModel {
  @JsonSerializable(explicitToJson: true)
  const factory LugaresModel({
    required String id,
    required String name,
    required List<double> position,
    DateTime? createdAt,
  }) = _LugaresModel;

  factory LugaresModel.fromJson(Map<String, dynamic> json) =>
      _$LugaresModelFromJson(json);
}
