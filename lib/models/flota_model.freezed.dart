// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flota_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlotaModel {

 String get id; String get name; FlotaStatusType get status; List<double> get position; DateTime? get createdAt;
/// Create a copy of FlotaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlotaModelCopyWith<FlotaModel> get copyWith => _$FlotaModelCopyWithImpl<FlotaModel>(this as FlotaModel, _$identity);

  /// Serializes this FlotaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlotaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.position, position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,const DeepCollectionEquality().hash(position),createdAt);

@override
String toString() {
  return 'FlotaModel(id: $id, name: $name, status: $status, position: $position, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FlotaModelCopyWith<$Res>  {
  factory $FlotaModelCopyWith(FlotaModel value, $Res Function(FlotaModel) _then) = _$FlotaModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, FlotaStatusType status, List<double> position, DateTime? createdAt
});




}
/// @nodoc
class _$FlotaModelCopyWithImpl<$Res>
    implements $FlotaModelCopyWith<$Res> {
  _$FlotaModelCopyWithImpl(this._self, this._then);

  final FlotaModel _self;
  final $Res Function(FlotaModel) _then;

/// Create a copy of FlotaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? position = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FlotaStatusType,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as List<double>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlotaModel].
extension FlotaModelPatterns on FlotaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlotaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlotaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlotaModel value)  $default,){
final _that = this;
switch (_that) {
case _FlotaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlotaModel value)?  $default,){
final _that = this;
switch (_that) {
case _FlotaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  FlotaStatusType status,  List<double> position,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlotaModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.position,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  FlotaStatusType status,  List<double> position,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FlotaModel():
return $default(_that.id,_that.name,_that.status,_that.position,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  FlotaStatusType status,  List<double> position,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FlotaModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.position,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FlotaModel implements FlotaModel {
  const _FlotaModel({required this.id, required this.name, required this.status, required final  List<double> position, this.createdAt}): _position = position;
  factory _FlotaModel.fromJson(Map<String, dynamic> json) => _$FlotaModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  FlotaStatusType status;
 final  List<double> _position;
@override List<double> get position {
  if (_position is EqualUnmodifiableListView) return _position;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_position);
}

@override final  DateTime? createdAt;

/// Create a copy of FlotaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlotaModelCopyWith<_FlotaModel> get copyWith => __$FlotaModelCopyWithImpl<_FlotaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlotaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlotaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._position, _position)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,const DeepCollectionEquality().hash(_position),createdAt);

@override
String toString() {
  return 'FlotaModel(id: $id, name: $name, status: $status, position: $position, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FlotaModelCopyWith<$Res> implements $FlotaModelCopyWith<$Res> {
  factory _$FlotaModelCopyWith(_FlotaModel value, $Res Function(_FlotaModel) _then) = __$FlotaModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, FlotaStatusType status, List<double> position, DateTime? createdAt
});




}
/// @nodoc
class __$FlotaModelCopyWithImpl<$Res>
    implements _$FlotaModelCopyWith<$Res> {
  __$FlotaModelCopyWithImpl(this._self, this._then);

  final _FlotaModel _self;
  final $Res Function(_FlotaModel) _then;

/// Create a copy of FlotaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? position = null,Object? createdAt = freezed,}) {
  return _then(_FlotaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FlotaStatusType,position: null == position ? _self._position : position // ignore: cast_nullable_to_non_nullable
as List<double>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
