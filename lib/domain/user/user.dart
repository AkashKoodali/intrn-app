import 'dart:convert';

import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:intern_app/domain/core/value_objects.dart';

class MyUser {
  UniqueId id;
  EmailAddress emailAddress;
  String? photoUrl;
  String? photoStorageLocation;
  MyUser({
    required this.id,
    required this.emailAddress,
    this.photoUrl,
    this.photoStorageLocation,
  });

  MyUser copyWith({
    UniqueId? id,
    EmailAddress? emailAddress,
  }) {
    return MyUser(
      id: id ?? this.id,
      emailAddress: emailAddress ?? this.emailAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id.value.getOrElse(() => ""),
      'emailAddress': emailAddress.getOrCrash(),
    };
  }

  factory MyUser.fromMap(Map<String, dynamic> map) {
    return MyUser(
      id: UniqueId.fromUniqueString(map['id']),
      emailAddress: EmailAddress(map['emailAddress']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUser.fromJson(String source) => MyUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyUser(id: $id,emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MyUser &&
        other.id == id &&
        other.emailAddress == emailAddress &&
        other.photoUrl == photoUrl &&
        other.photoStorageLocation == photoStorageLocation;
  }

  @override
  int get hashCode {
    return id.hashCode ^ emailAddress.hashCode;
  }
}
