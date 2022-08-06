import 'package:dartz/dartz.dart';
import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:intern_app/domain/user/user.dart';
import 'package:intern_app/domain/user/user_failure.dart';

abstract class IUserFacade {
  Future<Either<UserFailure, MyUser>> getUser();
  Future<Either<UserFailure, MyUser>> createOrUpdateUser(
      {required EmailAddress emailAddress,required Password password,
      }
        );
  Future<Either<UserFailure, Unit>> deleteUser();
}
