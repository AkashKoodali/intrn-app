import 'package:intern_app/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an unrecoverable point. Terminating...";
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}

class UnauthenticatedError extends Error {
  // final ValueFailure valueFailure;

  UnauthenticatedError();

  @override
  String toString() {
    const explanation =
        "Encountered a ValueFailure at an unrecoverable point. Terminating...";
    return Error.safeToString("$explanation Failure was: ");
  }
}
