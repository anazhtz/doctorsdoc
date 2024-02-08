import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';

class FireHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final CollectionReference userDataRef = FirebaseFirestore.instance.collection('user');

  get user => auth.currentUser;

  Future<String?> signUp(
      {required String mail, required String password, required String name, required String phone, required String type }) async {
    try {
      UserCredential response = await auth.createUserWithEmailAndPassword(
          email: mail, password: password,
      );
      final data={
        'Id' : response.user?.uid,
        'Name' : name,
        'Phone' : phone,
        'Type' : type,
      };
      userDataRef.add(data);
      return null;
    } on FirebaseAuthException
    catch (e) {
      return e.message;
    }
  }

  Future<String> signIn({required String mail, required String pass}) async {
    try {
      final response = await auth.signInWithEmailAndPassword(email: mail, password: pass);
      final userData = await db.collection("user").get();
      for (var docSnapshot in userData.docs) {
        if (response.user?.uid == docSnapshot.data()['Id']) {
          return "${docSnapshot.data()['Type']}";
        }
      }
      return "";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "";
    }
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}