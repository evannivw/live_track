// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationsModel {

 String get id; String get title; String get message; String get flotaId; String get flotaName; DateTime get createdAt;
/// Create a copy of NotificationsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsModelCopyWith<NotificationsModel> get copyWith => _$NotificationsModelCopyWithImpl<NotificationsModel>(this as NotificationsModel, _$identity);

  /// Serializes this NotificationsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.flotaId, flotaId) || other.flotaId == flotaId)&&(identical(other.flotaName, flotaName) || other.flotaName == flotaName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,message,flotaId,flotaName,createdAt);

@override
String toString() {
  return 'NotificationsModel(id: $id, title: $title, message: $message, flotaId: $flotaId, flotaName: $flotaName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $NotificationsModelCopyWith<$Res>  {
  factory $NotificationsModelCopyWith(NotificationsModel value, $Res Function(NotificationsModel) _then) = _$NotificationsModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String message, String flotaId, String flotaName, DateTime createdAt
});




}
/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._self, this._then);

  final NotificationsModel _self;
  final $Res Function(NotificationsModel) _then;

/// Create a copy of NotificationsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? message = null,Object? flotaId = null,Object? flotaName = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,flotaId: null == flotaId ? _self.flotaId : flotaId // ignore: cast_nullable_to_non_nullable
as String,flotaName: null == flotaName ? _self.flotaName : flotaName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsModel].
extension NotificationsModelPatterns on NotificationsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String message,  String flotaId,  String flotaName,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsModel() when $default != null:
return $default(_that.id,_that.title,_that.message,_that.flotaId,_that.flotaName,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String message,  String flotaId,  String flotaName,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationsModel():
return $default(_that.id,_that.title,_that.message,_that.flotaId,_that.flotaName,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String message,  String flotaId,  String flotaName,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsModel() when $default != null:
return $default(_that.id,_that.title,_that.message,_that.flotaId,_that.flotaName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _NotificationsModel implements NotificationsModel {
  const _NotificationsModel({required this.id, required this.title, required this.message, required this.flotaId, required this.flotaName, required this.createdAt});
  factory _NotificationsModel.fromJson(Map<String, dynamic> json) => _$NotificationsModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String message;
@override final  String flotaId;
@override final  String flotaName;
@override final  DateTime createdAt;

/// Create a copy of NotificationsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsModelCopyWith<_NotificationsModel> get copyWith => __$NotificationsModelCopyWithImpl<_NotificationsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.flotaId, flotaId) || other.flotaId == flotaId)&&(identical(other.flotaName, flotaName) || other.flotaName == flotaName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,message,flotaId,flotaName,createdAt);

@override
String toString() {
  return 'NotificationsModel(id: $id, title: $title, message: $message, flotaId: $flotaId, flotaName: $flotaName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationsModelCopyWith<$Res> implements $NotificationsModelCopyWith<$Res> {
  factory _$NotificationsModelCopyWith(_NotificationsModel value, $Res Function(_NotificationsModel) _then) = __$NotificationsModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String message, String flotaId, String flotaName, DateTime createdAt
});




}
/// @nodoc
class __$NotificationsModelCopyWithImpl<$Res>
    implements _$NotificationsModelCopyWith<$Res> {
  __$NotificationsModelCopyWithImpl(this._self, this._then);

  final _NotificationsModel _self;
  final $Res Function(_NotificationsModel) _then;

/// Create a copy of NotificationsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? message = null,Object? flotaId = null,Object? flotaName = null,Object? createdAt = null,}) {
  return _then(_NotificationsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,flotaId: null == flotaId ? _self.flotaId : flotaId // ignore: cast_nullable_to_non_nullable
as String,flotaName: null == flotaName ? _self.flotaName : flotaName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
