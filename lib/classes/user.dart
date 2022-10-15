import 'package:firebase_auth/firebase_auth.dart';

class FlakeUser {
  FlakeUser(this.instance);

  FirebaseAuth instance;
  List<String> interests = [];
}