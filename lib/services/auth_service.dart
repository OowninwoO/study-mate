import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static User? get currentUser => _firebaseAuth.currentUser;

  static Future<String?> get idToken async {
    if (currentUser == null) return null;

    return currentUser!.getIdToken();
  }

  static Future<void> signInWithGoogle() async {
    await _googleSignIn.initialize();

    final googleUser = await _googleSignIn.authenticate();
    final googleAuth = googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    await _firebaseAuth.signInWithCredential(credential);
  }

  static Future<void> signOut() async {
    if (currentUser == null) return;

    final providerId = currentUser!.providerData.isEmpty
        ? null
        : currentUser!.providerData.first.providerId;

    await _firebaseAuth.signOut();

    switch (providerId) {
      case 'google.com':
        await _googleSignIn.signOut();
        break;

      default:
        break;
    }
  }
}
