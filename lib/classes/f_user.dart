import 'package:firebase_auth/firebase_auth.dart';

class FUser {
  FirebaseAuth instance;
  String instanceID = "";
  List<String> interests = [];

  FUser(this.instance){
    instanceID = instance.tenantId!;
  }

  Map<String, dynamic> toMap() {
    return {
      'instanceID': instanceID,
      'instance': instance,
      'interests': interests,
    };
  }

  FUser.fromMap(Map<String, dynamic> userMap)
      : instanceID = userMap["instanceID"],
        instance = userMap["instance"],
        interests = userMap["interests"];
}