import 'dart:async';


import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intern_app/domain/auth/auth_failure.dart';
import 'package:intern_app/domain/auth/i_auth_facade.dart';
import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade iAuthFacade;
  SignInFormBloc(this.iAuthFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      refreshState: (event) async* {
        yield SignInFormState.initial();
      },
      emailChanged: (event) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(event.value),
            authFailureOrSuccess: none());
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
            password: Password(event.value), authFailureOrSuccess: none());
      },
      signInWithEmailAndPasswordPressed: (event) async* {
        yield state.copyWith(showErrorMessages: true);
        yield state.copyWith(
          isSubmitting: true,
          showErrorMessages: true,
          authFailureOrSuccess: none(),
        );

        final result = await iAuthFacade.signInUser(
            emailAddress: state.emailAddress, password: state.password);
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccess: some(result),
        );

        yield state.copyWith(
          authFailureOrSuccess: none(),
        );
      },
      signInWithGooglePressed: (event) async* {
        final result = await iAuthFacade.signInWithGoogle();
        yield state.copyWith(authFailureOrSuccess: some(result));
      },
      signInWithFacebookPressed: (event) async* {},
    );
  }
}
