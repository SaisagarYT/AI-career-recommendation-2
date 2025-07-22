import 'package:firebase_auth/firebase_auth.dart';

signup(String email, String password) async {
  try {
    final credetials = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    print(credetials.credential!.providerId);
  } on FirebaseAuthException catch (err) {
    if (err.code == 'weak-password') {
      print("The provided password is too weak");
    } else if (err.code == 'email-already-in-use') {
      print("The email is already in use");
    }
  }
}

signin(String email, String password) async {
  try {
    final credetials = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    print(credetials.credential!.providerId);
  } on FirebaseAuthException catch (err) {
    if (err.code == 'wrong-password') {
      print("The password is wrong!");
    } else if (err.code == 'user-not-found') {
      print("The user not found!");
    }
  }
}
