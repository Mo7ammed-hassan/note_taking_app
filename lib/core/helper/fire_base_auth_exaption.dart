import 'package:firebase_auth/firebase_auth.dart';

Exception handleFirebaseAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case 'user-not-found':
      return Exception('No user found for that email.');
    case 'wrong-password':
      return Exception('Wrong password provided for that user.');
    case 'weak-password':
      return Exception('The password provided is too weak.');
    case 'email-already-in-use':
      return Exception('The email is already in use.');
    case 'weak-password':
      return Exception('The password provided is too weak.');
    default:
      return Exception('Authentication failed: ${e.message}');
  }
}
