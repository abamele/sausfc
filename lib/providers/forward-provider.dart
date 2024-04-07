
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:saus_fc/models/player-profile-model.dart';

class ForwardProvider with ChangeNotifier {

  List<PlayerProfileModel> forwardDataList = [];

  void getForwardData() async {
    List<PlayerProfileModel> newList = [];

    QuerySnapshot reviewForwardValue =
    await FirebaseFirestore.instance.collection("ForwardsDB").get();
    reviewForwardValue.docs.forEach((element) {
      PlayerProfileModel playerProfileModel = PlayerProfileModel(
        //product data
        playerId: element.get("playerId"),
        fullName: element.get("fullName"),
        shortName: element.get("shortName"),
        playerNo: element.get("playerNo"),
        profileImage: element.get("profileImage"),
        imageUrl: element.get("imageUrl"),
        imageGallery: List<String>.from(element.get('imageGallery')),
        //logo: element.get("logo"),
        dateOfBirth: element.get("dateOfBirth"),
        nationality: element.get("nationality"),
        flag: element.get("flag"),
        state: element.get("state"),
        position: element.get("position"),
        height: element.get("height"),
        weight: element.get("weight"),
        preferredFoot: element.get("preferredFoot"),
        alternativePosition: element.get("alternativePosition"),
        spokenLanguage: element.get("spokenLanguage"),
        managersEmail: element.get("managersEmail"),
        managersContact: element.get("managersContact"),
        join: element.get("join"),
        gamesPlayed: element.get("gamesPlayed"),
        positionPlayed: element.get("positionPlayed"),
        goalsScored: element.get("goalsScored"),
        booking: element.get("booking"),
        season: List<num>.from(element.get('season')),
        club: List<String>.from(element.get('club')),
        passAccurency: element.get("passAccurency"),
        dribble: element.get("dribble"),
        speed: element.get("speed"),
        ballControl: element.get("ballControl"),
        shootingPower: element.get("shootingPower"),
        teamWork: element.get("teamWork"),

        metricCoordination: element.get("metricCoordination"),
        metricScore: element.get("metricScore"),
        metricAgility: element.get("metricAgility"),
        metricEndurance: element.get("metricEndurance"),
        metricPower: element.get("metricPower"),

        coordScore: element.get("coordScore"),
        //coordAverageScore: element.get("coordAverageScore"),
        coordCoachNote: element.get("coordCoachNote"),
        coordCoachName: element.get("coordCoachName"),

        agilityScore: element.get("agilityScore"),
        //agilityAverageScore: element.get("agilityAverageScre"),
        agilityCoachNote: element.get("agilityCoachNote"),
        agilityCoachName: element.get("agilityCoachName"),

        endurScore: element.get("endurScore"),
        //endurAverageScore: element.get("andurAverageScore"),
        endurCoachNote: element.get("endurCoachNote"),
        endurCoachName: element.get("endurCoachName"),

        powerScore: element.get("powerScore"),
        //powerAverageScore: element.get("powerAverageScore"),
        powerCoachNote: element.get("powerCoachNote"),
        powerCoachName: element.get("powerCoachName"),
      );
      newList.add(playerProfileModel);
    });
    forwardDataList = newList;
    notifyListeners();
  }

  List<PlayerProfileModel> get getForwardDataList {
    return forwardDataList;
  }
}