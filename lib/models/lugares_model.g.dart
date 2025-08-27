// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lugares_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LugaresModel _$LugaresModelFromJson(Map<String, dynamic> json) =>
    _LugaresModel(
      id: json['id'] as String,
      name: json['name'] as String,
      position:
          (json['position'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$LugaresModelToJson(_LugaresModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
