class FEvent {
  final int uuid;
  String title;
  String details;
  DateTime time;
  List<String> participantIDs = [];
  List<String> pendingParticipantIDs = [];

  FEvent(this.uuid, this.title, this.details, this.time);

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'title': title,
      'details': details,
      'time': time,
      'participantIDs': participantIDs,
      'pendingParticipantIDs': pendingParticipantIDs,
    };
  }

  FEvent.fromMap(Map<String, dynamic> fEventMap)
      : uuid = fEventMap["uuid"],
        title = fEventMap["title"],
        details = fEventMap["details"],
        time = fEventMap["time"],
        participantIDs = fEventMap["participantIDs"],
        pendingParticipantIDs = fEventMap["pendingParticipantIDs"];
}