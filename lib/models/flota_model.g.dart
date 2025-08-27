// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flota_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlotaModel _$FlotaModelFromJson(Map<String, dynamic> json) => _FlotaModel(
  id: json['id'] as String,
  name: json['name'] as String,
  status: $enumDecode(_$FlotaStatusTypeEnumMap, json['status']),
  position:
      (json['position'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$FlotaModelToJson(_FlotaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$FlotaStatusTypeEnumMap[instance.status]!,
      'position': instance.position,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$FlotaStatusTypeEnumMap = {
  FlotaStatusType.active: 'active',
  FlotaStatusType.inactive: 'inactive',
  FlotaStatusType.maintenance: 'maintenance',
};
