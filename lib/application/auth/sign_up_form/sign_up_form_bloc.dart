
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/domain/auth/auth_failure.dart';
import 'package:intern_app/domain/auth/i_auth_facade.dart';
import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade iAuthFacade;
  SignUpFormBloc(this.iAuthFacade) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(SignUpFormEvent event) async* {
    yield* event.map(refreshState: (event) async* {
      yield SignUpFormState.initial();
    }, emailChanged: (event) async* {
      yield state.copyWith(
          emailAddress: EmailAddress(event.value),
          authFailureOrSuccess: none());
    }, passwordChanged: (event) async* {
      yield state.copyWith(
          password: Password(event.value), authFailureOrSuccess: none());
    }, confirmPasswordChanged: (event) async* {
      yield state.copyWith(
          confirmPassword:
              Password2(state.password.value.getOrElse(() => ""), event.value),
          authFailureOrSuccess: none());
    }, 
    registerUserPressed: (event) async* {
      yield state.copyWith(showErrorMessages: true);
      final result = await iAuthFacade.signUpUser(
          emailAddress: state.emailAddress, 
          password: state.password,
          );
      yield state.copyWith(authFailureOrSuccess: some(result));
    });
  }
}
