// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

  RefreshState refreshState() {
    return const RefreshState();
  }

  EmailChanged emailChanged(String value) {
    return EmailChanged(
      value,
    );
  }

  PasswordChanged passwordChanged(String value) {
    return PasswordChanged(
      value,
    );
  }

  ConfirmPasswordChanged confirmPasswordChanged(String value) {
    return ConfirmPasswordChanged(
      value,
    );
  }

  RegisterUserPressed registerUserPressed() {
    return const RegisterUserPressed();
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class $RefreshStateCopyWith<$Res> {
  factory $RefreshStateCopyWith(
          RefreshState value, $Res Function(RefreshState) then) =
      _$RefreshStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshStateCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $RefreshStateCopyWith<$Res> {
  _$RefreshStateCopyWithImpl(
      RefreshState _value, $Res Function(RefreshState) _then)
      : super(_value, (v) => _then(v as RefreshState));

  @override
  RefreshState get _value => super._value as RefreshState;
}

/// @nodoc

class _$RefreshState implements RefreshState {
  const _$RefreshState();

  @override
  String toString() {
    return 'SignUpFormEvent.refreshState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) {
    return refreshState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) {
    return refreshState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) {
    return refreshState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) {
    return refreshState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) {
    if (refreshState != null) {
      return refreshState(this);
    }
    return orElse();
  }
}

abstract class RefreshState implements SignUpFormEvent {
  const factory RefreshState() = _$RefreshState;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(EmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
  const factory EmailChanged(String value) = _$EmailChanged;

  String get value;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(PasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
  const factory PasswordChanged(String value) = _$PasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordChangedCopyWith<$Res> {
  factory $ConfirmPasswordChangedCopyWith(ConfirmPasswordChanged value,
          $Res Function(ConfirmPasswordChanged) then) =
      _$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $ConfirmPasswordChangedCopyWith<$Res> {
  _$ConfirmPasswordChangedCopyWithImpl(ConfirmPasswordChanged _value,
      $Res Function(ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordChanged));

  @override
  ConfirmPasswordChanged get _value => super._value as ConfirmPasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ConfirmPasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignUpFormEvent.confirmPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConfirmPasswordChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      _$ConfirmPasswordChangedCopyWithImpl<ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) {
    return confirmPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) {
    return confirmPasswordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements SignUpFormEvent {
  const factory ConfirmPasswordChanged(String value) = _$ConfirmPasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  $ConfirmPasswordChangedCopyWith<ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserPressedCopyWith<$Res> {
  factory $RegisterUserPressedCopyWith(
          RegisterUserPressed value, $Res Function(RegisterUserPressed) then) =
      _$RegisterUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterUserPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $RegisterUserPressedCopyWith<$Res> {
  _$RegisterUserPressedCopyWithImpl(
      RegisterUserPressed _value, $Res Function(RegisterUserPressed) _then)
      : super(_value, (v) => _then(v as RegisterUserPressed));

  @override
  RegisterUserPressed get _value => super._value as RegisterUserPressed;
}

/// @nodoc

class _$RegisterUserPressed implements RegisterUserPressed {
  const _$RegisterUserPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.registerUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshState,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) confirmPasswordChanged,
    required TResult Function() registerUserPressed,
  }) {
    return registerUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
  }) {
    return registerUserPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshState,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? confirmPasswordChanged,
    TResult Function()? registerUserPressed,
    required TResult orElse(),
  }) {
    if (registerUserPressed != null) {
      return registerUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshState value) refreshState,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegisterUserPressed value) registerUserPressed,
  }) {
    return registerUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
  }) {
    return registerUserPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshState value)? refreshState,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(RegisterUserPressed value)? registerUserPressed,
    required TResult orElse(),
  }) {
    if (registerUserPressed != null) {
      return registerUserPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterUserPressed implements SignUpFormEvent {
  const factory RegisterUserPressed() = _$RegisterUserPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required Password2 confirmPassword,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SignUpFormState(
      emailAddress: emailAddress,
      password: password,
      confirmPassword: confirmPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password2 get confirmPassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password2 confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password2,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      Password2 confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_SignUpFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password2,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.emailAddress,
      required this.password,
      required this.confirmPassword,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Password2 confirmPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignUpFormState(emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.authFailureOrSuccess, authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {required EmailAddress emailAddress,
          required Password password,
          required Password2 confirmPassword,
          required bool showErrorMessages,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SignUpFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Password2 get confirmPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
