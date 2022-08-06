import 'package:dartz/dartz.dart';
import 'package:intern_app/domain/auth/auth_failure.dart';
import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:intern_app/domain/user/user.dart';


abstract class IAuthFacade {
  Future<Option<MyUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInUser(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signUpUser(
      {required EmailAddress emailAddress, required Password password,
      });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
