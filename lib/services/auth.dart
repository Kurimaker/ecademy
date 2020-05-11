import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Logga in anonymt
  Future signInAnon() async {

    try {
      AuthResult result = await _auth.signInAnonymously();
    } catch(e) {
      print(e.toString());
    }

  }

  // Logga in med mail & lösen

  // Skapa konto med mail & lösen

  // Logga in med google

  // Logga ut

}
