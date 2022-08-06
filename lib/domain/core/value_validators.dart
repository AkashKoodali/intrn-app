import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateUserName(String input) {
  if (input.trim().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyUserName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const regExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(regExp).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword2(String p1, String p2) {
  if (p1 == p2) {
    return right(p2);
  } else {
    return left(ValueFailure.passwordMisMatch(failedValue: p2));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumberOptional(String input) {
  String regex = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else if (input.trim().isEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  String regex = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCardName(String input) {
  if (input.trim().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyCardName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCardDate(String input) {
  if (input.length < 5) {
    return left(ValueFailure.invalidCardDate(failureValue: input));
  }
  int currentYear = DateTime.now().year;
  List<String> monthNYear = input.split("/");
  int month = int.parse(monthNYear[0]);
  int year = int.parse(monthNYear[1]) + 2000;
  if (month > 12 || month < 1) {
    return left(ValueFailure.invalidCardDate(failureValue: input));
  } else if (year < currentYear) {
    return left(ValueFailure.invalidCardDate(failureValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateCVV(String input) {
  var regex = r"^[0-9]{3,4}$";
  if (RegExp(regex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidCVV(failureValue: input));
}

Either<ValueFailure<String>, String> validateCardNumber(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidCardNumber(failureValue: input));
  }

  if (input.length < 16) {
    return left(ValueFailure.invalidCardNumber(failureValue: input));
  }

  int sum = 0;
  int length = input.length;
  for (var i = 0; i < length; i++) {
    int digit = int.parse(input[length - i - 1]);
    if (i % 2 == 1) {
      digit *= 2;
    }

    sum += digit > 9 ? (digit - 9) : digit;
  }
  if (sum % 10 == 0) {
    return right(input);
  }

  return left(ValueFailure.invalidCardNumber(failureValue: input));
}
