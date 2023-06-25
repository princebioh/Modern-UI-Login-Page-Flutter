import 'package:firebase_auth/firebase_auth.dart';

class Authenticate {
  // Initialize FIREBASE AUTH
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create Method for Sign In
  Future<void> emailSignIn(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // TODO: Pass Error Message to Alert Dialog
      print(e.code);
    } catch (e) {
      print(e.toString());
    }
  }

  // Create Method for Sign Up
  Future<void> emailSignUp({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // TODO: Pass Error Message to Alert Dialog
      print(e.code);
    } catch (e) {
      print(e.toString());
    }
  }

  // Method so Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
