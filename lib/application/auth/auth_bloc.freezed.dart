// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) onLogin,
    required TResult Function() onLogout,
    required TResult Function(LoginParams params, String name) onRegister,
    required TResult Function(String email) onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? onLogin,
    TResult? Function()? onLogout,
    TResult? Function(LoginParams params, String name)? onRegister,
    TResult? Function(String email)? onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? onLogin,
    TResult Function()? onLogout,
    TResult Function(LoginParams params, String name)? onRegister,
    TResult Function(String email)? onResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnRegister value) onRegister,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnRegister value)? onRegister,
    TResult? Function(_OnResetPassword value)? onResetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnRegister value)? onRegister,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoginImplCopyWith<$Res> {
  factory _$$OnLoginImplCopyWith(
          _$OnLoginImpl value, $Res Function(_$OnLoginImpl) then) =
      __$$OnLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams params});
}

/// @nodoc
class __$$OnLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLoginImpl>
    implements _$$OnLoginImplCopyWith<$Res> {
  __$$OnLoginImplCopyWithImpl(
      _$OnLoginImpl _value, $Res Function(_$OnLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$OnLoginImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }
}

/// @nodoc

class _$OnLoginImpl implements _OnLogin {
  const _$OnLoginImpl(this.params);

  @override
  final LoginParams params;

  @override
  String toString() {
    return 'AuthEvent.onLogin(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginImplCopyWith<_$OnLoginImpl> get copyWith =>
      __$$OnLoginImplCopyWithImpl<_$OnLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) onLogin,
    required TResult Function() onLogout,
    required TResult Function(LoginParams params, String name) onRegister,
    required TResult Function(String email) onResetPassword,
  }) {
    return onLogin(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? onLogin,
    TResult? Function()? onLogout,
    TResult? Function(LoginParams params, String name)? onRegister,
    TResult? Function(String email)? onResetPassword,
  }) {
    return onLogin?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? onLogin,
    TResult Function()? onLogout,
    TResult Function(LoginParams params, String name)? onRegister,
    TResult Function(String email)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnRegister value) onRegister,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnRegister value)? onRegister,
    TResult? Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnRegister value)? onRegister,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLogin != null) {
      return onLogin(this);
    }
    return orElse();
  }
}

abstract class _OnLogin implements AuthEvent {
  const factory _OnLogin(final LoginParams params) = _$OnLoginImpl;

  LoginParams get params;
  @JsonKey(ignore: true)
  _$$OnLoginImplCopyWith<_$OnLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLogoutImplCopyWith<$Res> {
  factory _$$OnLogoutImplCopyWith(
          _$OnLogoutImpl value, $Res Function(_$OnLogoutImpl) then) =
      __$$OnLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLogoutImpl>
    implements _$$OnLogoutImplCopyWith<$Res> {
  __$$OnLogoutImplCopyWithImpl(
      _$OnLogoutImpl _value, $Res Function(_$OnLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLogoutImpl implements _OnLogout {
  const _$OnLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.onLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) onLogin,
    required TResult Function() onLogout,
    required TResult Function(LoginParams params, String name) onRegister,
    required TResult Function(String email) onResetPassword,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? onLogin,
    TResult? Function()? onLogout,
    TResult? Function(LoginParams params, String name)? onRegister,
    TResult? Function(String email)? onResetPassword,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? onLogin,
    TResult Function()? onLogout,
    TResult Function(LoginParams params, String name)? onRegister,
    TResult Function(String email)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnRegister value) onRegister,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnRegister value)? onRegister,
    TResult? Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnRegister value)? onRegister,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class _OnLogout implements AuthEvent {
  const factory _OnLogout() = _$OnLogoutImpl;
}

/// @nodoc
abstract class _$$OnRegisterImplCopyWith<$Res> {
  factory _$$OnRegisterImplCopyWith(
          _$OnRegisterImpl value, $Res Function(_$OnRegisterImpl) then) =
      __$$OnRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginParams params, String name});
}

/// @nodoc
class __$$OnRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnRegisterImpl>
    implements _$$OnRegisterImplCopyWith<$Res> {
  __$$OnRegisterImplCopyWithImpl(
      _$OnRegisterImpl _value, $Res Function(_$OnRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
    Object? name = null,
  }) {
    return _then(_$OnRegisterImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as LoginParams,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRegisterImpl implements _OnRegister {
  const _$OnRegisterImpl({required this.params, required this.name});

  @override
  final LoginParams params;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.onRegister(params: $params, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterImpl &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterImplCopyWith<_$OnRegisterImpl> get copyWith =>
      __$$OnRegisterImplCopyWithImpl<_$OnRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) onLogin,
    required TResult Function() onLogout,
    required TResult Function(LoginParams params, String name) onRegister,
    required TResult Function(String email) onResetPassword,
  }) {
    return onRegister(params, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? onLogin,
    TResult? Function()? onLogout,
    TResult? Function(LoginParams params, String name)? onRegister,
    TResult? Function(String email)? onResetPassword,
  }) {
    return onRegister?.call(params, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? onLogin,
    TResult Function()? onLogout,
    TResult Function(LoginParams params, String name)? onRegister,
    TResult Function(String email)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onRegister != null) {
      return onRegister(params, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnRegister value) onRegister,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnRegister value)? onRegister,
    TResult? Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnRegister value)? onRegister,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onRegister != null) {
      return onRegister(this);
    }
    return orElse();
  }
}

abstract class _OnRegister implements AuthEvent {
  const factory _OnRegister(
      {required final LoginParams params,
      required final String name}) = _$OnRegisterImpl;

  LoginParams get params;
  String get name;
  @JsonKey(ignore: true)
  _$$OnRegisterImplCopyWith<_$OnRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnResetPasswordImplCopyWith<$Res> {
  factory _$$OnResetPasswordImplCopyWith(_$OnResetPasswordImpl value,
          $Res Function(_$OnResetPasswordImpl) then) =
      __$$OnResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnResetPasswordImpl>
    implements _$$OnResetPasswordImplCopyWith<$Res> {
  __$$OnResetPasswordImplCopyWithImpl(
      _$OnResetPasswordImpl _value, $Res Function(_$OnResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OnResetPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnResetPasswordImpl implements _OnResetPassword {
  const _$OnResetPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.onResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnResetPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      __$$OnResetPasswordImplCopyWithImpl<_$OnResetPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams params) onLogin,
    required TResult Function() onLogout,
    required TResult Function(LoginParams params, String name) onRegister,
    required TResult Function(String email) onResetPassword,
  }) {
    return onResetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams params)? onLogin,
    TResult? Function()? onLogout,
    TResult? Function(LoginParams params, String name)? onRegister,
    TResult? Function(String email)? onResetPassword,
  }) {
    return onResetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams params)? onLogin,
    TResult Function()? onLogout,
    TResult Function(LoginParams params, String name)? onRegister,
    TResult Function(String email)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLogin value) onLogin,
    required TResult Function(_OnLogout value) onLogout,
    required TResult Function(_OnRegister value) onRegister,
    required TResult Function(_OnResetPassword value) onResetPassword,
  }) {
    return onResetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLogin value)? onLogin,
    TResult? Function(_OnLogout value)? onLogout,
    TResult? Function(_OnRegister value)? onRegister,
    TResult? Function(_OnResetPassword value)? onResetPassword,
  }) {
    return onResetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLogin value)? onLogin,
    TResult Function(_OnLogout value)? onLogout,
    TResult Function(_OnRegister value)? onRegister,
    TResult Function(_OnResetPassword value)? onResetPassword,
    required TResult orElse(),
  }) {
    if (onResetPassword != null) {
      return onResetPassword(this);
    }
    return orElse();
  }
}

abstract class _OnResetPassword implements AuthEvent {
  const factory _OnResetPassword({required final String email}) =
      _$OnResetPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$OnResetPasswordImplCopyWith<_$OnResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'AuthState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$LogoutSuccessImplCopyWith<$Res> {
  factory _$$LogoutSuccessImplCopyWith(
          _$LogoutSuccessImpl value, $Res Function(_$LogoutSuccessImpl) then) =
      __$$LogoutSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutSuccessImpl>
    implements _$$LogoutSuccessImplCopyWith<$Res> {
  __$$LogoutSuccessImplCopyWithImpl(
      _$LogoutSuccessImpl _value, $Res Function(_$LogoutSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessImpl implements _LogoutSuccess {
  const _$LogoutSuccessImpl();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogoutSuccess implements AuthState {
  const factory _LogoutSuccess() = _$LogoutSuccessImpl;
}

/// @nodoc
abstract class _$$ShowMessageImplCopyWith<$Res> {
  factory _$$ShowMessageImplCopyWith(
          _$ShowMessageImpl value, $Res Function(_$ShowMessageImpl) then) =
      __$$ShowMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$ShowMessageImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ShowMessageImpl>
    implements _$$ShowMessageImplCopyWith<$Res> {
  __$$ShowMessageImplCopyWithImpl(
      _$ShowMessageImpl _value, $Res Function(_$ShowMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$ShowMessageImpl(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowMessageImpl implements _ShowMessage {
  const _$ShowMessageImpl(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'AuthState.showMessage(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMessageImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMessageImplCopyWith<_$ShowMessageImpl> get copyWith =>
      __$$ShowMessageImplCopyWithImpl<_$ShowMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return showMessage(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return showMessage?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return showMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return showMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(this);
    }
    return orElse();
  }
}

abstract class _ShowMessage implements AuthState {
  const factory _ShowMessage(final String reason) = _$ShowMessageImpl;

  String get reason;
  @JsonKey(ignore: true)
  _$$ShowMessageImplCopyWith<_$ShowMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterSuccessImpl implements _RegisterSuccess {
  const _$RegisterSuccessImpl();

  @override
  String toString() {
    return 'AuthState.registerSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess() = _$RegisterSuccessImpl;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessImplCopyWith<$Res> {
  factory _$$ResetPasswordSuccessImplCopyWith(_$ResetPasswordSuccessImpl value,
          $Res Function(_$ResetPasswordSuccessImpl) then) =
      __$$ResetPasswordSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResetPasswordSuccessImpl>
    implements _$$ResetPasswordSuccessImplCopyWith<$Res> {
  __$$ResetPasswordSuccessImplCopyWithImpl(_$ResetPasswordSuccessImpl _value,
      $Res Function(_$ResetPasswordSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPasswordSuccessImpl implements _ResetPasswordSuccess {
  const _$ResetPasswordSuccessImpl();

  @override
  String toString() {
    return 'AuthState.resetPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String reason) showMessage,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return resetPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String reason)? showMessage,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String reason)? showMessage,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LogoutSuccess value) logoutSuccess,
    required TResult Function(_ShowMessage value) showMessage,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LogoutSuccess value)? logoutSuccess,
    TResult? Function(_ShowMessage value)? showMessage,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LogoutSuccess value)? logoutSuccess,
    TResult Function(_ShowMessage value)? showMessage,
    TResult Function(_Loading value)? loading,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordSuccess implements AuthState {
  const factory _ResetPasswordSuccess() = _$ResetPasswordSuccessImpl;
}
