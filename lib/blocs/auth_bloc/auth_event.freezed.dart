// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SignInRequested value)?  signInRequested,TResult Function( _SignOutRequested value)?  signOutRequested,TResult Function( _RestoreRequested value)?  restoreRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInRequested() when signInRequested != null:
return signInRequested(_that);case _SignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case _RestoreRequested() when restoreRequested != null:
return restoreRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SignInRequested value)  signInRequested,required TResult Function( _SignOutRequested value)  signOutRequested,required TResult Function( _RestoreRequested value)  restoreRequested,}){
final _that = this;
switch (_that) {
case _SignInRequested():
return signInRequested(_that);case _SignOutRequested():
return signOutRequested(_that);case _RestoreRequested():
return restoreRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SignInRequested value)?  signInRequested,TResult? Function( _SignOutRequested value)?  signOutRequested,TResult? Function( _RestoreRequested value)?  restoreRequested,}){
final _that = this;
switch (_that) {
case _SignInRequested() when signInRequested != null:
return signInRequested(_that);case _SignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case _RestoreRequested() when restoreRequested != null:
return restoreRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signInRequested,TResult Function()?  signOutRequested,TResult Function()?  restoreRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case _SignOutRequested() when signOutRequested != null:
return signOutRequested();case _RestoreRequested() when restoreRequested != null:
return restoreRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signInRequested,required TResult Function()  signOutRequested,required TResult Function()  restoreRequested,}) {final _that = this;
switch (_that) {
case _SignInRequested():
return signInRequested(_that.email,_that.password);case _SignOutRequested():
return signOutRequested();case _RestoreRequested():
return restoreRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signInRequested,TResult? Function()?  signOutRequested,TResult? Function()?  restoreRequested,}) {final _that = this;
switch (_that) {
case _SignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case _SignOutRequested() when signOutRequested != null:
return signOutRequested();case _RestoreRequested() when restoreRequested != null:
return restoreRequested();case _:
  return null;

}
}

}

/// @nodoc


class _SignInRequested implements AuthEvent {
  const _SignInRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInRequestedCopyWith<_SignInRequested> get copyWith => __$SignInRequestedCopyWithImpl<_SignInRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignInRequestedCopyWith(_SignInRequested value, $Res Function(_SignInRequested) _then) = __$SignInRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInRequestedCopyWithImpl<$Res>
    implements _$SignInRequestedCopyWith<$Res> {
  __$SignInRequestedCopyWithImpl(this._self, this._then);

  final _SignInRequested _self;
  final $Res Function(_SignInRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignInRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignOutRequested implements AuthEvent {
  const _SignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOutRequested()';
}


}




/// @nodoc


class _RestoreRequested implements AuthEvent {
  const _RestoreRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestoreRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.restoreRequested()';
}


}




// dart format on
