import 'package:cloud_firestore/cloud_firestore.dart';

import '../classes/f_event.dart';
import '../classes/f_user.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Get user from database or create
  void syncUser(FUser user) async {
    var userDoc = await _db.collection("users").doc(user.instanceID).get();
    if (userDoc.exists) {
      user = FUser.fromMap(userDoc.data()!);
    }
    else {
      _db.collection("users").doc(user.instanceID).set({"instance": user.instance});
      _db.collection("users").doc(user.instanceID).set({"interests": user.interests});
    }
  }

  Future<FUser> getFUser(FUser fUser) async {
    var fUserDoc = await _db.collection("users").doc(fUser.instanceID).get();
    return FUser.fromMap(fUserDoc.data()!);
  }

  updateFUser(FUser fUser) async {
    await _db.collection("users").doc(fUser.instanceID).update(fUser.toMap());
  }

  deleteFUser(String instanceID) async {
    await _db.collection("users").doc(instanceID).delete();

  }

  Future<FEvent> getFEvent(FEvent fEvent) async {
    var fEventDoc = await _db.collection("events").doc(fEvent.uuid.toString()).get();
    return FEvent.fromMap(fEventDoc.data()!);
  }

  updateFEvent(FEvent fEvent) async {
    await _db.collection("events").doc(fEvent.uuid.toString()).update(fEvent.toMap());
  }

  deleteFEvent(int uuid) async {
    await _db.collection("Employees").doc(uuid.toString()).delete();

  }

  Future<List<FEvent>> retrieveFEvents() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await _db.collection("fevents").get();
    return snapshot.docs
        .map((docSnapshot) => FEvent.fromMap(docSnapshot.data()))
        .toList();
  }
}