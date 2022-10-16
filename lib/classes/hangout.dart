class Hangout {
  final int uuid;
  List<String> participantIDs = [];

  Hangout(this.uuid);

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'participantIDs': participantIDs,
    };
  }

  Hangout.fromMap(Map<String, dynamic> hangoutMap)
      : uuid = hangoutMap["uuid"],
        participantIDs = hangoutMap["participantIDs"];
}