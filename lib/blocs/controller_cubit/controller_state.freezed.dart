// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ControllerState {

 List<LugaresModel> get lugaresList; List<NotificationsModel> get notificacionesList; List<FlotaModel> get flotasList; List<FlotaModel>? get searchFlotasList; List<LugaresModel>? get searchLugaresList; List<NotificationsModel>? get searchNotificacionesList;
/// Create a copy of ControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ControllerStateCopyWith<ControllerState> get copyWith => _$ControllerStateCopyWithImpl<ControllerState>(this as ControllerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ControllerState&&const DeepCollectionEquality().equals(other.lugaresList, lugaresList)&&const DeepCollectionEquality().equals(other.notificacionesList, notificacionesList)&&const DeepCollectionEquality().equals(other.flotasList, flotasList)&&const DeepCollectionEquality().equals(other.searchFlotasList, searchFlotasList)&&const DeepCollectionEquality().equals(other.searchLugaresList, searchLugaresList)&&const DeepCollectionEquality().equals(other.searchNotificacionesList, searchNotificacionesList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lugaresList),const DeepCollectionEquality().hash(notificacionesList),const DeepCollectionEquality().hash(flotasList),const DeepCollectionEquality().hash(searchFlotasList),const DeepCollectionEquality().hash(searchLugaresList),const DeepCollectionEquality().hash(searchNotificacionesList));

@override
String toString() {
  return 'ControllerState(lugaresList: $lugaresList, notificacionesList: $notificacionesList, flotasList: $flotasList, searchFlotasList: $searchFlotasList, searchLugaresList: $searchLugaresList, searchNotificacionesList: $searchNotificacionesList)';
}


}

/// @nodoc
abstract mixin class $ControllerStateCopyWith<$Res>  {
  factory $ControllerStateCopyWith(ControllerState value, $Res Function(ControllerState) _then) = _$ControllerStateCopyWithImpl;
@useResult
$Res call({
 List<LugaresModel> lugaresList, List<NotificationsModel> notificacionesList, List<FlotaModel> flotasList, List<FlotaModel>? searchFlotasList, List<LugaresModel>? searchLugaresList, List<NotificationsModel>? searchNotificacionesList
});




}
/// @nodoc
class _$ControllerStateCopyWithImpl<$Res>
    implements $ControllerStateCopyWith<$Res> {
  _$ControllerStateCopyWithImpl(this._self, this._then);

  final ControllerState _self;
  final $Res Function(ControllerState) _then;

/// Create a copy of ControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lugaresList = null,Object? notificacionesList = null,Object? flotasList = null,Object? searchFlotasList = freezed,Object? searchLugaresList = freezed,Object? searchNotificacionesList = freezed,}) {
  return _then(_self.copyWith(
lugaresList: null == lugaresList ? _self.lugaresList : lugaresList // ignore: cast_nullable_to_non_nullable
as List<LugaresModel>,notificacionesList: null == notificacionesList ? _self.notificacionesList : notificacionesList // ignore: cast_nullable_to_non_nullable
as List<NotificationsModel>,flotasList: null == flotasList ? _self.flotasList : flotasList // ignore: cast_nullable_to_non_nullable
as List<FlotaModel>,searchFlotasList: freezed == searchFlotasList ? _self.searchFlotasList : searchFlotasList // ignore: cast_nullable_to_non_nullable
as List<FlotaModel>?,searchLugaresList: freezed == searchLugaresList ? _self.searchLugaresList : searchLugaresList // ignore: cast_nullable_to_non_nullable
as List<LugaresModel>?,searchNotificacionesList: freezed == searchNotificacionesList ? _self.searchNotificacionesList : searchNotificacionesList // ignore: cast_nullable_to_non_nullable
as List<NotificationsModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ControllerState].
extension ControllerStatePatterns on ControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ControllerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ControllerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ControllerState value)  $default,){
final _that = this;
switch (_that) {
case _ControllerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ControllerState value)?  $default,){
final _that = this;
switch (_that) {
case _ControllerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LugaresModel> lugaresList,  List<NotificationsModel> notificacionesList,  List<FlotaModel> flotasList,  List<FlotaModel>? searchFlotasList,  List<LugaresModel>? searchLugaresList,  List<NotificationsModel>? searchNotificacionesList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ControllerState() when $default != null:
return $default(_that.lugaresList,_that.notificacionesList,_that.flotasList,_that.searchFlotasList,_that.searchLugaresList,_that.searchNotificacionesList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LugaresModel> lugaresList,  List<NotificationsModel> notificacionesList,  List<FlotaModel> flotasList,  List<FlotaModel>? searchFlotasList,  List<LugaresModel>? searchLugaresList,  List<NotificationsModel>? searchNotificacionesList)  $default,) {final _that = this;
switch (_that) {
case _ControllerState():
return $default(_that.lugaresList,_that.notificacionesList,_that.flotasList,_that.searchFlotasList,_that.searchLugaresList,_that.searchNotificacionesList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LugaresModel> lugaresList,  List<NotificationsModel> notificacionesList,  List<FlotaModel> flotasList,  List<FlotaModel>? searchFlotasList,  List<LugaresModel>? searchLugaresList,  List<NotificationsModel>? searchNotificacionesList)?  $default,) {final _that = this;
switch (_that) {
case _ControllerState() when $default != null:
return $default(_that.lugaresList,_that.notificacionesList,_that.flotasList,_that.searchFlotasList,_that.searchLugaresList,_that.searchNotificacionesList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ControllerState implements ControllerState {
  const _ControllerState({required final  List<LugaresModel> lugaresList, required final  List<NotificationsModel> notificacionesList, required final  List<FlotaModel> flotasList, final  List<FlotaModel>? searchFlotasList, final  List<LugaresModel>? searchLugaresList, final  List<NotificationsModel>? searchNotificacionesList}): _lugaresList = lugaresList,_notificacionesList = notificacionesList,_flotasList = flotasList,_searchFlotasList = searchFlotasList,_searchLugaresList = searchLugaresList,_searchNotificacionesList = searchNotificacionesList;
  

 final  List<LugaresModel> _lugaresList;
@override List<LugaresModel> get lugaresList {
  if (_lugaresList is EqualUnmodifiableListView) return _lugaresList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lugaresList);
}

 final  List<NotificationsModel> _notificacionesList;
@override List<NotificationsModel> get notificacionesList {
  if (_notificacionesList is EqualUnmodifiableListView) return _notificacionesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notificacionesList);
}

 final  List<FlotaModel> _flotasList;
@override List<FlotaModel> get flotasList {
  if (_flotasList is EqualUnmodifiableListView) return _flotasList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flotasList);
}

 final  List<FlotaModel>? _searchFlotasList;
@override List<FlotaModel>? get searchFlotasList {
  final value = _searchFlotasList;
  if (value == null) return null;
  if (_searchFlotasList is EqualUnmodifiableListView) return _searchFlotasList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<LugaresModel>? _searchLugaresList;
@override List<LugaresModel>? get searchLugaresList {
  final value = _searchLugaresList;
  if (value == null) return null;
  if (_searchLugaresList is EqualUnmodifiableListView) return _searchLugaresList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<NotificationsModel>? _searchNotificacionesList;
@override List<NotificationsModel>? get searchNotificacionesList {
  final value = _searchNotificacionesList;
  if (value == null) return null;
  if (_searchNotificacionesList is EqualUnmodifiableListView) return _searchNotificacionesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ControllerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ControllerStateCopyWith<_ControllerState> get copyWith => __$ControllerStateCopyWithImpl<_ControllerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ControllerState&&const DeepCollectionEquality().equals(other._lugaresList, _lugaresList)&&const DeepCollectionEquality().equals(other._notificacionesList, _notificacionesList)&&const DeepCollectionEquality().equals(other._flotasList, _flotasList)&&const DeepCollectionEquality().equals(other._searchFlotasList, _searchFlotasList)&&const DeepCollectionEquality().equals(other._searchLugaresList, _searchLugaresList)&&const DeepCollectionEquality().equals(other._searchNotificacionesList, _searchNotificacionesList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lugaresList),const DeepCollectionEquality().hash(_notificacionesList),const DeepCollectionEquality().hash(_flotasList),const DeepCollectionEquality().hash(_searchFlotasList),const DeepCollectionEquality().hash(_searchLugaresList),const DeepCollectionEquality().hash(_searchNotificacionesList));

@override
String toString() {
  return 'ControllerState(lugaresList: $lugaresList, notificacionesList: $notificacionesList, flotasList: $flotasList, searchFlotasList: $searchFlotasList, searchLugaresList: $searchLugaresList, searchNotificacionesList: $searchNotificacionesList)';
}


}

/// @nodoc
abstract mixin class _$ControllerStateCopyWith<$Res> implements $ControllerStateCopyWith<$Res> {
  factory _$ControllerStateCopyWith(_ControllerState value, $Res Function(_ControllerState) _then) = __$ControllerStateCopyWithImpl;
@override @useResult
$Res call({
 List<LugaresModel> lugaresList, List<NotificationsModel> notificacionesList, List<FlotaModel> flotasList, List<FlotaModel>? searchFlotasList, List<LugaresModel>? searchLugaresList, List<NotificationsModel>? searchNotificacionesList
});




}
/// @nodoc
class __$ControllerStateCopyWithImpl<$Res>
    implements _$ControllerStateCopyWith<$Res> {
  __$ControllerStateCopyWithImpl(this._self, this._then);

  final _ControllerState _self;
  final $Res Function(_ControllerState) _then;

/// Create a copy of ControllerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lugaresList = null,Object? notificacionesList = null,Object? flotasList = null,Object? searchFlotasList = freezed,Object? searchLugaresList = freezed,Object? searchNotificacionesList = freezed,}) {
  return _then(_ControllerState(
lugaresList: null == lugaresList ? _self._lugaresList : lugaresList // ignore: cast_nullable_to_non_nullable
as List<LugaresModel>,notificacionesList: null == notificacionesList ? _self._notificacionesList : notificacionesList // ignore: cast_nullable_to_non_nullable
as List<NotificationsModel>,flotasList: null == flotasList ? _self._flotasList : flotasList // ignore: cast_nullable_to_non_nullable
as List<FlotaModel>,searchFlotasList: freezed == searchFlotasList ? _self._searchFlotasList : searchFlotasList // ignore: cast_nullable_to_non_nullable
as List<FlotaModel>?,searchLugaresList: freezed == searchLugaresList ? _self._searchLugaresList : searchLugaresList // ignore: cast_nullable_to_non_nullable
as List<LugaresModel>?,searchNotificacionesList: freezed == searchNotificacionesList ? _self._searchNotificacionesList : searchNotificacionesList // ignore: cast_nullable_to_non_nullable
as List<NotificationsModel>?,
  ));
}


}

// dart format on
