class FEvent {
  final int uuid;
  String details;
  DateTime time;
  List<String> participantIDs = [];
  List<String> pendingParticipantIDs = [];

  FEvent(this.uuid, this.details, this.time);

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'details': details,
      'time': time,
      'participantIDs': participantIDs,
      'pendingParticipantIDs': pendingParticipantIDs,
    };
  }

  FEvent.fromMap(Map<String, dynamic> fEventMap)
      : uuid = fEventMap["uuid"],
        details = fEventMap["details"],
        time = fEventMap["time"],
        participantIDs = fEventMap["participantIDs"],
        pendingParticipantIDs = fEventMap["pendingParticipantIDs"];
}