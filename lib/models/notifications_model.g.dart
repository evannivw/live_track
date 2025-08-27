// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) =>
    _NotificationsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      flotaId: json['flotaId'] as String,
      flotaName: json['flotaName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$NotificationsModelToJson(_NotificationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'flotaId': instance.flotaId,
      'flotaName': instance.flotaName,
      'createdAt': instance.createdAt.toIso8601String(),
    };
