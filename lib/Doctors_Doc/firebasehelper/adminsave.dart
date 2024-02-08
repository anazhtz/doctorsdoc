// import 'package:firebase_auth/firebase_auth.dart';
//
// import 'package:firebase_auth/firebase_auth.dart';
//
// class FireHelper {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//
//   get user => auth.currentUser;
//
//   Future<String?> signUp(
//       {required String amail, required String apass}) async {
//     try {
//       await auth.createUserWithEmailAndPassword(
//           email: amail, password: apass);
//       return null;
//     } on FirebaseAuthException
//     catch (e) {
//       return e.message;
//     }
//   }
//
//   Future<String?> signIn({required String amail, required String apass}) async {
//     try {
//       await auth.signInWithEmailAndPassword(email: amail, password: apass);
//       return null;
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//   }
//
//   Future<void> signOut() async {
//     await auth.signOut();
//   }
// }