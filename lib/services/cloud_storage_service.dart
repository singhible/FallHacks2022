import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

import '../classes/user.dart';

class CloudStorageService {
  final storageRef = FirebaseStorage.instance.ref();

  void syncUser(FlakeUser user) async {
    if (user.instance.tenantId != null) {
      final flakeUserDataRef = storageRef.child(user.instance.tenantId!);
      try {
        final Uint8List? data = await storageRef.getData(1024 * 1024);
      } on FirebaseException catch (e) {
        // Handle any errors.
      }
    }
    
  }
}