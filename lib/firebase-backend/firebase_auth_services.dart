import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(
      final email, final password) async {
    final userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    return userCredential.user;
  }

  Future<User?> signUserWithEmailAndPassword(
      final email, final password) async {
    final userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    return userCredential.user;
  }

  Future<void> signOut() {
    return auth.signOut();
  }
}
