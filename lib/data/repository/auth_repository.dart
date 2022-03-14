import 'package:ecommers/app/common/dictionary.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';

class AuthRepository {
  GoogleAuthProvider authProvider = GoogleAuthProvider();
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;

  Future<String> createAccount({required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return accountCreated;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return weakPassword;
      } else if (e.code == 'email-already-in-use') {
        return accountAlreadyExist;
      }
    }
    return pleaseEnterEmailAndPassword;
  }

  Future<String> signIn({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return welcome;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return noUserFound;
      } else if (e.code == 'wrong-password') {
        return wrongPassword;
      }
    }
    return pleaseEnterEmailAndPassword;
  }

  Future<String> signInWithGoogle() async {
    try {
      await auth.signInWithPopup(authProvider);
      return welcome;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return noUserFound;
      } else if (e.code == 'wrong-password') {
        return wrongPassword;
      }
    }
    return pleaseEnterEmailAndPassword;
  }

  Future<String> resetPassword(String newPassword) async {
    try {
      await user!.updatePassword(newPassword);
      return resetPasswordSuccessful;
    } catch (e) {
      return error;
    }
  }

  Future<String> signOut() async {
    await auth.signOut();
    return singOUt;
  }
}
