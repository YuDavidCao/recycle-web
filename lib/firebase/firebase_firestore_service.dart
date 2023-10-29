import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreService {
  static void addMessage(
      {required String email, required String title, required String message}) {
    FirebaseFirestore.instance
        .collection("Messages")
        .add({"email": email, "title": title, "message": message});
  }
}
