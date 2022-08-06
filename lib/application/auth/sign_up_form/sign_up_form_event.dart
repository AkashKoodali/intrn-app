part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.refreshState() = RefreshState;
  const factory SignUpFormEvent.emailChanged(String value) = EmailChanged;
  const factory SignUpFormEvent.passwordChanged(String value) = PasswordChanged;
  const factory SignUpFormEvent.confirmPasswordChanged(String value) =
      ConfirmPasswordChanged;
  const factory SignUpFormEvent.registerUserPressed() = RegisterUserPressed;
}
