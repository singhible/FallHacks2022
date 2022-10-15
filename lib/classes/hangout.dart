import 'package:firebase_auth/firebase_auth.dart';

import 'user.dart';

class Hangout {
  Hangout(this.uuid);

  final int uuid;
  List<FlakeUser> participants = [];
}