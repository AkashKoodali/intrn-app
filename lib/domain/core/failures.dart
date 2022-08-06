import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.emptyUserName({required String failedValue}) =
      EmptyUserName<T>;
  const factory ValueFailure.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required String failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.passwordMisMatch({required String failedValue}) =
      PasswordMisMatch;
  const factory ValueFailure.invalidPhoneNumber({required String failedValue}) =
      InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidCardNumber({required String failureValue}) =
      InvalidCardNumber<T>;
  const factory ValueFailure.emptyCardName({required String failedValue}) =
      EmptyCardName<T>;
  const factory ValueFailure.invalidCardDate({required String failureValue}) =
      InvalidCardDate<T>;
  const factory ValueFailure.invalidCVV({required String failureValue}) =
      InvalidCVV<T>;
}
