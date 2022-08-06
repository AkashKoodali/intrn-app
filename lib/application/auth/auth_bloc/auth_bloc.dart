
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intern_app/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade iAuthFacade;
  AuthBloc(this.iAuthFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(requestAuthStatus: (event) async* {
      final result = await iAuthFacade.getSignedInUser();
      yield result.fold(() => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated());
    }, signOut: (event) async* {
      yield const AuthState.loadingAuthenticationStatus();
      await iAuthFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
