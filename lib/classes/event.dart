import 'package:fallhacks2022/classes/hangout.dart';

import 'user.dart';

class Event extends Hangout {
  Event(super.uuid, this.details, this.time);

  String details;
  DateTime time;
  List<FlakeUser> pendingParticipants = [];
}