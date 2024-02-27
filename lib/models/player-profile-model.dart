class PlayerProfileModel {
  String? playerId;
  String? fullName;
  num playerNo;
  String? imageUrl;
  String? dateOfBirth;
  String? nationality;
  String? state;
  String? position;
  String? height;
  String? weight;
  String? preferredFoot;
  String? alternativePosition;
  String? spokenLanguage;
  String? managersEmail;
  num managersContact;
  num join;
  num gamesPlayed;
  String? positionPlayed;
  num goalsScored;
  String? booking;
  num season;
  String? club;
  num passAccurency;
  num dribble;
  num speed;
  num ballControl;
  num shootingPower;
  num teamWork;

  String? metricCoordination;
  String metricScore;
  String? metricAgility;
  String? metricEndurance;
  String? metricPower;

  num coordScore;
  //num coordAverageScore;
  String? coordCoachNote;
  String? coordCoachName;

  num agilityScore;
  //num agilityAverageScore;
  String? agilityCoachNote;
  String? agilityCoachName;

  num endurScore;
  //num endurAverageScore;
  String? endurCoachNote;
  String? endurCoachName;

  num powerScore;
  //num powerAverageScore;
  String? powerCoachNote;
  String? powerCoachName;

  PlayerProfileModel(
      {this.playerId,
      this.fullName,
      required this.playerNo,
      this.imageUrl,
      this.dateOfBirth,
      this.nationality,
      this.state,
      this.position,
      this.height,
      this.weight,
      this.preferredFoot,
      this.alternativePosition,
      this.spokenLanguage,
      this.managersEmail,
      required this.managersContact,
      required this.join,
      required this.gamesPlayed,
      this.positionPlayed,
      required this.goalsScored,
      this.booking,
      required this.season,
      this.club,
      required this.passAccurency,
      required this.dribble,
      required this.speed,
      required this.ballControl,
      required this.shootingPower,
      required this.teamWork,
      this.metricCoordination,
      required this.metricAgility,
      required this.metricScore,
      required this.metricEndurance,
      required this.metricPower,
      required this.coordScore,
      //required this.coordAverageScore,
      required this.coordCoachNote,
      required this.coordCoachName,
      required this.agilityScore,
      //required this.agilityAverageScore,
      required this.agilityCoachNote,
      required this.agilityCoachName,
      required this.endurScore,
      //required this.endurAverageScore,
      required this.endurCoachNote,
      required this.endurCoachName,
      required this.powerScore,
      //required this.powerAverageScore,
      required this.powerCoachNote,
      required this.powerCoachName});
}
