part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = GetCurrentUser;
  const factory UserEvent.createOrUpdateUser(
      {
        EmailAddress? emailAddress, Password? password,
        }) = CreateOrUpdateUser;
  const factory UserEvent.deleteUser() = DeleteUser;
}
