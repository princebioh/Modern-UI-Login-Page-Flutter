import 'package:firebase_auth/firebase_auth.dart';

class Authenticate {
  // Initialize FIREBASE AUTH
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create Method for Sign In
  Future<String?> emailSignIn(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return e.toString();
    }
  }

  // Create Method for Sign Up
  Future<String?> emailSignUp({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.code;
    } catch (e) {
      return e.toString();
    }
  }

  // Method so Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
