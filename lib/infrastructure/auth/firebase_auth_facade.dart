import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intern_app/domain/auth/auth_failure.dart';
import 'package:intern_app/domain/auth/i_auth_facade.dart';
import 'package:intern_app/domain/user/user.dart';
import 'package:intern_app/domain/auth/value_field_objects.dart';
import 'package:intern_app/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<MyUser>> getSignedInUser() async {
    final _firebaseUser = _firebaseAuth.currentUser;
    if (_firebaseUser != null) {
      return some(MyUser(
          id: UniqueId.fromUniqueString(_firebaseUser.uid),
          emailAddress: EmailAddress(_firebaseUser.uid)));
    }
    return none();
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      debugPrint("firebaseAuth signout successful!");
    } catch (e) {
      debugPrint("firebaseAuth signout error : $e");
    }
    try {
      await _googleSignIn.signOut();
      debugPrint("google signout successful!");
    } catch (e) {
      debugPrint(" google sign out error : $e");
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUser(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancellByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      await _firebaseAuth.signInWithCredential(authCredential);

      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpUser(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUser());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
