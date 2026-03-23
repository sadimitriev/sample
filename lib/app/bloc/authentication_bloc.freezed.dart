// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthenticationEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent()';
}


}

/// @nodoc
class $AuthenticationEventCopyWith<$Res>  {
$AuthenticationEventCopyWith(AuthenticationEvent _, $Res Function(AuthenticationEvent) __);
}


/// Adds pattern-matching-related methods to [AuthenticationEvent].
extension AuthenticationEventPatterns on AuthenticationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SubscriptionRequested value)?  subscriptionRequested,TResult Function( _LogoutRequested value)?  logoutRequested,TResult Function( _AccessTokenRewoked value)?  accessTokenRewoked,TResult Function( _UserActivityDetected value)?  userActivityDetected,TResult Function( _NewSessionStart value)?  newSessionStart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _AccessTokenRewoked() when accessTokenRewoked != null:
return accessTokenRewoked(_that);case _UserActivityDetected() when userActivityDetected != null:
return userActivityDetected(_that);case _NewSessionStart() when newSessionStart != null:
return newSessionStart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SubscriptionRequested value)  subscriptionRequested,required TResult Function( _LogoutRequested value)  logoutRequested,required TResult Function( _AccessTokenRewoked value)  accessTokenRewoked,required TResult Function( _UserActivityDetected value)  userActivityDetected,required TResult Function( _NewSessionStart value)  newSessionStart,}){
final _that = this;
switch (_that) {
case _SubscriptionRequested():
return subscriptionRequested(_that);case _LogoutRequested():
return logoutRequested(_that);case _AccessTokenRewoked():
return accessTokenRewoked(_that);case _UserActivityDetected():
return userActivityDetected(_that);case _NewSessionStart():
return newSessionStart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SubscriptionRequested value)?  subscriptionRequested,TResult? Function( _LogoutRequested value)?  logoutRequested,TResult? Function( _AccessTokenRewoked value)?  accessTokenRewoked,TResult? Function( _UserActivityDetected value)?  userActivityDetected,TResult? Function( _NewSessionStart value)?  newSessionStart,}){
final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested(_that);case _LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case _AccessTokenRewoked() when accessTokenRewoked != null:
return accessTokenRewoked(_that);case _UserActivityDetected() when userActivityDetected != null:
return userActivityDetected(_that);case _NewSessionStart() when newSessionStart != null:
return newSessionStart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  subscriptionRequested,TResult Function()?  logoutRequested,TResult Function()?  accessTokenRewoked,TResult Function()?  userActivityDetected,TResult Function()?  newSessionStart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested();case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _AccessTokenRewoked() when accessTokenRewoked != null:
return accessTokenRewoked();case _UserActivityDetected() when userActivityDetected != null:
return userActivityDetected();case _NewSessionStart() when newSessionStart != null:
return newSessionStart();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  subscriptionRequested,required TResult Function()  logoutRequested,required TResult Function()  accessTokenRewoked,required TResult Function()  userActivityDetected,required TResult Function()  newSessionStart,}) {final _that = this;
switch (_that) {
case _SubscriptionRequested():
return subscriptionRequested();case _LogoutRequested():
return logoutRequested();case _AccessTokenRewoked():
return accessTokenRewoked();case _UserActivityDetected():
return userActivityDetected();case _NewSessionStart():
return newSessionStart();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  subscriptionRequested,TResult? Function()?  logoutRequested,TResult? Function()?  accessTokenRewoked,TResult? Function()?  userActivityDetected,TResult? Function()?  newSessionStart,}) {final _that = this;
switch (_that) {
case _SubscriptionRequested() when subscriptionRequested != null:
return subscriptionRequested();case _LogoutRequested() when logoutRequested != null:
return logoutRequested();case _AccessTokenRewoked() when accessTokenRewoked != null:
return accessTokenRewoked();case _UserActivityDetected() when userActivityDetected != null:
return userActivityDetected();case _NewSessionStart() when newSessionStart != null:
return newSessionStart();case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionRequested with DiagnosticableTreeMixin implements AuthenticationEvent {
  const _SubscriptionRequested();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent.subscriptionRequested'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent.subscriptionRequested()';
}


}




/// @nodoc


class _LogoutRequested with DiagnosticableTreeMixin implements AuthenticationEvent {
  const _LogoutRequested();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent.logoutRequested'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent.logoutRequested()';
}


}




/// @nodoc


class _AccessTokenRewoked with DiagnosticableTreeMixin implements AuthenticationEvent {
  const _AccessTokenRewoked();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent.accessTokenRewoked'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessTokenRewoked);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent.accessTokenRewoked()';
}


}




/// @nodoc


class _UserActivityDetected with DiagnosticableTreeMixin implements AuthenticationEvent {
  const _UserActivityDetected();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent.userActivityDetected'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserActivityDetected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent.userActivityDetected()';
}


}




/// @nodoc


class _NewSessionStart with DiagnosticableTreeMixin implements AuthenticationEvent {
  const _NewSessionStart();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationEvent.newSessionStart'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewSessionStart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationEvent.newSessionStart()';
}


}




/// @nodoc
mixin _$AuthenticationState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationState()';
}


}

/// @nodoc
class $AuthenticationStateCopyWith<$Res>  {
$AuthenticationStateCopyWith(AuthenticationState _, $Res Function(AuthenticationState) __);
}


/// Adds pattern-matching-related methods to [AuthenticationState].
extension AuthenticationStatePatterns on AuthenticationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Unknown value)?  unknown,TResult Function( _Unauthenticated value)?  unauthenticated,TResult Function( _Authenticated value)?  authenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Unknown() when unknown != null:
return unknown(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Unknown value)  unknown,required TResult Function( _Unauthenticated value)  unauthenticated,required TResult Function( _Authenticated value)  authenticated,}){
final _that = this;
switch (_that) {
case _Unknown():
return unknown(_that);case _Unauthenticated():
return unauthenticated(_that);case _Authenticated():
return authenticated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Unknown value)?  unknown,TResult? Function( _Unauthenticated value)?  unauthenticated,TResult? Function( _Authenticated value)?  authenticated,}){
final _that = this;
switch (_that) {
case _Unknown() when unknown != null:
return unknown(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unknown,TResult Function()?  unauthenticated,TResult Function()?  authenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Unknown() when unknown != null:
return unknown();case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Authenticated() when authenticated != null:
return authenticated();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unknown,required TResult Function()  unauthenticated,required TResult Function()  authenticated,}) {final _that = this;
switch (_that) {
case _Unknown():
return unknown();case _Unauthenticated():
return unauthenticated();case _Authenticated():
return authenticated();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unknown,TResult? Function()?  unauthenticated,TResult? Function()?  authenticated,}) {final _that = this;
switch (_that) {
case _Unknown() when unknown != null:
return unknown();case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Authenticated() when authenticated != null:
return authenticated();case _:
  return null;

}
}

}

/// @nodoc


class _Unknown with DiagnosticableTreeMixin implements AuthenticationState {
  const _Unknown();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationState.unknown'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unknown);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationState.unknown()';
}


}




/// @nodoc


class _Unauthenticated with DiagnosticableTreeMixin implements AuthenticationState {
  const _Unauthenticated();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationState.unauthenticated'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationState.unauthenticated()';
}


}




/// @nodoc


class _Authenticated with DiagnosticableTreeMixin implements AuthenticationState {
  const _Authenticated();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'AuthenticationState.authenticated'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'AuthenticationState.authenticated()';
}


}




// dart format on
