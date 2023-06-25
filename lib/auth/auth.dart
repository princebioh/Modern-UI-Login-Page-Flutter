import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authenticate {
  // Initialize FIREBASE AUTH
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create Method for Email Sign In
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

  // Create Method for Email Sign Up
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

  // Method to Sign Out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Google SignIn
  Future<UserCredential> googleSignIn() async {
    // Initialize Google Sign In flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Get User Authentication details from Google Sign In
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new GoogleProvider Auth Credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Pass Credential to Firebase Auth
    return await _auth.signInWithCredential(credential);
  }
}
