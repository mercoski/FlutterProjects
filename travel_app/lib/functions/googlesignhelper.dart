import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninHelper {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  Future<GoogleSignInAccount?> signIn() async {
    final user = await _googleSignIn.signIn();
    if (user != null) {
      print(user.email);
      return user;
    }
    return null;
  }

  Future<GoogleSignInAuthentication?> googleAutheticate() async {
    if (await _googleSignIn.isSignedIn()) {
      final user = _googleSignIn.currentUser;
      final userData = await user?.authentication;
      print(userData?.accessToken);
      return userData;
    }
    return null;
  }

  Future<GoogleSignInAccount?> signOut() async {
    final user = await _googleSignIn.signOut();
    if (user != null) {
      print(user.email);
      return user;
    }
    return null;
  }
}
