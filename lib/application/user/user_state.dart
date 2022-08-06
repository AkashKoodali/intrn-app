part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required MyUser? user,
    required bool isLoading,
    required Option<Either<UserFailure, Unit>> userFailureOrSuccess,
  }) = _UserState;

  factory UserState.initial() => UserState(
        user: null,
        isLoading: false,
        userFailureOrSuccess: none(),
      );
}
