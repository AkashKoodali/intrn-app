// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  GetCurrentUser getCurrentUser() {
    return const GetCurrentUser();
  }

  CreateOrUpdateUser createOrUpdateUser(
      {EmailAddress? emailAddress, Password? password}) {
    return CreateOrUpdateUser(
      emailAddress: emailAddress,
      password: password,
    );
  }

  DeleteUser deleteUser() {
    return const DeleteUser();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(EmailAddress? emailAddress, Password? password)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(
      GetCurrentUser _value, $Res Function(GetCurrentUser) _then)
      : super(_value, (v) => _then(v as GetCurrentUser));

  @override
  GetCurrentUser get _value => super._value as GetCurrentUser;
}

/// @nodoc

class _$GetCurrentUser implements GetCurrentUser {
  const _$GetCurrentUser();

  @override
  String toString() {
    return 'UserEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(EmailAddress? emailAddress, Password? password)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements UserEvent {
  const factory GetCurrentUser() = _$GetCurrentUser;
}

/// @nodoc
abstract class $CreateOrUpdateUserCopyWith<$Res> {
  factory $CreateOrUpdateUserCopyWith(
          CreateOrUpdateUser value, $Res Function(CreateOrUpdateUser) then) =
      _$CreateOrUpdateUserCopyWithImpl<$Res>;
  $Res call({EmailAddress? emailAddress, Password? password});
}

/// @nodoc
class _$CreateOrUpdateUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $CreateOrUpdateUserCopyWith<$Res> {
  _$CreateOrUpdateUserCopyWithImpl(
      CreateOrUpdateUser _value, $Res Function(CreateOrUpdateUser) _then)
      : super(_value, (v) => _then(v as CreateOrUpdateUser));

  @override
  CreateOrUpdateUser get _value => super._value as CreateOrUpdateUser;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
  }) {
    return _then(CreateOrUpdateUser(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password?,
    ));
  }
}

/// @nodoc

class _$CreateOrUpdateUser implements CreateOrUpdateUser {
  const _$CreateOrUpdateUser({this.emailAddress, this.password});

  @override
  final EmailAddress? emailAddress;
  @override
  final Password? password;

  @override
  String toString() {
    return 'UserEvent.createOrUpdateUser(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrUpdateUser &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $CreateOrUpdateUserCopyWith<CreateOrUpdateUser> get copyWith =>
      _$CreateOrUpdateUserCopyWithImpl<CreateOrUpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(EmailAddress? emailAddress, Password? password)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) {
    return createOrUpdateUser(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) {
    return createOrUpdateUser?.call(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) {
    if (createOrUpdateUser != null) {
      return createOrUpdateUser(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return createOrUpdateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) {
    return createOrUpdateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (createOrUpdateUser != null) {
      return createOrUpdateUser(this);
    }
    return orElse();
  }
}

abstract class CreateOrUpdateUser implements UserEvent {
  const factory CreateOrUpdateUser(
      {EmailAddress? emailAddress, Password? password}) = _$CreateOrUpdateUser;

  EmailAddress? get emailAddress;
  Password? get password;
  @JsonKey(ignore: true)
  $CreateOrUpdateUserCopyWith<CreateOrUpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteUserCopyWith<$Res> {
  factory $DeleteUserCopyWith(
          DeleteUser value, $Res Function(DeleteUser) then) =
      _$DeleteUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $DeleteUserCopyWith<$Res> {
  _$DeleteUserCopyWithImpl(DeleteUser _value, $Res Function(DeleteUser) _then)
      : super(_value, (v) => _then(v as DeleteUser));

  @override
  DeleteUser get _value => super._value as DeleteUser;
}

/// @nodoc

class _$DeleteUser implements DeleteUser {
  const _$DeleteUser();

  @override
  String toString() {
    return 'UserEvent.deleteUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentUser,
    required TResult Function(EmailAddress? emailAddress, Password? password)
        createOrUpdateUser,
    required TResult Function() deleteUser,
  }) {
    return deleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
  }) {
    return deleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentUser,
    TResult Function(EmailAddress? emailAddress, Password? password)?
        createOrUpdateUser,
    TResult Function()? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentUser value) getCurrentUser,
    required TResult Function(CreateOrUpdateUser value) createOrUpdateUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentUser value)? getCurrentUser,
    TResult Function(CreateOrUpdateUser value)? createOrUpdateUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UserEvent {
  const factory DeleteUser() = _$DeleteUser;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {required MyUser? user,
      required bool isLoading,
      required Option<Either<UserFailure, Unit>> userFailureOrSuccess}) {
    return _UserState(
      user: user,
      isLoading: isLoading,
      userFailureOrSuccess: userFailureOrSuccess,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  MyUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {MyUser? user,
      bool isLoading,
      Option<Either<UserFailure, Unit>> userFailureOrSuccess});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MyUser? user,
      bool isLoading,
      Option<Either<UserFailure, Unit>> userFailureOrSuccess});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = freezed,
    Object? userFailureOrSuccess = freezed,
  }) {
    return _then(_UserState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.user,
      required this.isLoading,
      required this.userFailureOrSuccess});

  @override
  final MyUser? user;
  @override
  final bool isLoading;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrSuccess;

  @override
  String toString() {
    return 'UserState(user: $user, isLoading: $isLoading, userFailureOrSuccess: $userFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.userFailureOrSuccess, userFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(userFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
          {required MyUser? user,
          required bool isLoading,
          required Option<Either<UserFailure, Unit>> userFailureOrSuccess}) =
      _$_UserState;

  @override
  MyUser? get user;
  @override
  bool get isLoading;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
