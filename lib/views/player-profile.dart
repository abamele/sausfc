import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../globals/app-color.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';
import '../models/player-profile-model.dart';
import '../widgets/navbar_widget.dart';
import 'footer.dart';

class PlayerProfile extends StatefulWidget {
  PlayerProfile({super.key, required this.playerProfileModel});
  PlayerProfileModel playerProfileModel;

  @override
  State<PlayerProfile> createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelPlayerId": widget.playerProfileModel.playerId});
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelFullName": widget.playerProfileModel.fullName});
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelShortName": widget.playerProfileModel.shortName});
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelPlayerNo": widget.playerProfileModel.playerNo});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelProfileImage": widget.playerProfileModel.profileImage
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelImageGallery": widget.playerProfileModel.imageGallery
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelImageUrl": widget.playerProfileModel.imageUrl});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelDateOfBirth": widget.playerProfileModel.dateOfBirth
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelNationality": widget.playerProfileModel.nationality
    });
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelFlag": widget.playerProfileModel.flag});
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelState": widget.playerProfileModel.state});
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelPosition": widget.playerProfileModel.position});
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelHeight": widget.playerProfileModel.height});
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelWeight": widget.playerProfileModel.weight});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelPreferredFoot": widget.playerProfileModel.preferredFoot
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelAlternativePosition":
          widget.playerProfileModel.alternativePosition
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelSpokenLanguage":
          widget.playerProfileModel.spokenLanguage
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelManagersEmail": widget.playerProfileModel.managersEmail
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelManagersContact":
          widget.playerProfileModel.managersContact
    });
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelJoin": widget.playerProfileModel.join});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelGamesPlayed": widget.playerProfileModel.gamesPlayed
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelPositionPlayed":
          widget.playerProfileModel.positionPlayed
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelGoalsScored": widget.playerProfileModel.goalsScored
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelBooking": widget.playerProfileModel.booking});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelPassAccurency": widget.playerProfileModel.passAccurency
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelDribble": widget.playerProfileModel.dribble});
    Hive.box("profileDataBox")
        .putAll({"playerProfileModelSpeed": widget.playerProfileModel.speed});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelBallControl": widget.playerProfileModel.ballControl
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelShootingPower": widget.playerProfileModel.shootingPower
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelTeamWork": widget.playerProfileModel.teamWork});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelMetricCoordination":
          widget.playerProfileModel.metricCoordination
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelMetricScore": widget.playerProfileModel.metricScore
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelMetricAgility": widget.playerProfileModel.metricAgility
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelMetricEndurance":
          widget.playerProfileModel.metricEndurance
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelMetricPower": widget.playerProfileModel.metricPower
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelCoordScore": widget.playerProfileModel.coordScore});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelCoordCoachNote":
          widget.playerProfileModel.coordCoachNote
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelCoordCoachName":
          widget.playerProfileModel.coordCoachName
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelAgilityScore": widget.playerProfileModel.agilityScore
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelAgilityCoachNote":
          widget.playerProfileModel.agilityCoachNote
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelAgilityCoachName":
          widget.playerProfileModel.agilityCoachName
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelEndurScore": widget.playerProfileModel.endurScore});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelEndurCoachNote":
          widget.playerProfileModel.endurCoachNote
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelEndurCoachName":
          widget.playerProfileModel.endurCoachName
    });
    Hive.box("profileDataBox").putAll(
        {"playerProfileModelPowerScore": widget.playerProfileModel.powerScore});
    Hive.box("profileDataBox").putAll({
      "playerProfileModelPowerCoachNote":
          widget.playerProfileModel.powerCoachNote
    });
    Hive.box("profileDataBox").putAll({
      "playerProfileModelPowerCoachName":
          widget.playerProfileModel.powerCoachName
    });
    return Scaffold(
      backgroundColor: AppColors.bgColor2,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor2,
        elevation: 0.0,
        toolbarHeight: 90,
        title: MaterialButton(
          elevation: 8,
          child: Image.asset("assets/sausfc_logo.png", width: 55, height: 55),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: ListView(
        children: [
          HelperClass(
            mobile: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    //constraints: BoxConstraints(maxWidth: 1532.0),
                    child: SafeArea(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //width: size.width * 0.45,
                          //height: size.height * 1.06,
                          child: Card(
                            color: AppColors.aestheticsColor,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded( 
                                      child: SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/logoweb.png",
                                                width: 15,
                                                height: 15,
                                              ),
                                              SizedBox(width: 3.0,),
                                              Text(
                                                "Player \nProfile",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold, fontSize: 8.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded( 
                                      child: SizedBox(
                                          child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              "${Hive.box("profileDataBox").get("playerProfileModelFlag").toString()}",
                                              width: 35,
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Text(
                                                "${Hive.box("profileDataBox").get("playerProfileModelShortName")}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold, fontSize: 5.0),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                                /*Container(
                                  margin: EdgeInsets.only(left: 8.0, right: 8.0),
                                  color: AppColors.PurpleColor,
                                  height: 10,
                                ),*/
                                SizedBox(
                                  height: 10,
                                ),
                                Card(
                                  child: Hive.box("profileDataBox")
                                          .get("playerProfileModelProfileImage")
                                          .toString()
                                          .isEmpty
                                      ? Image.asset(
                                          "assets/profile_pers_avatar.png",
                                          height: size.height * 285,
                                          width: size.width * 0.6,
                                          fit: BoxFit.fill)
                                      : Image.network(
                                          "${Hive.box("profileDataBox").get("playerProfileModelProfileImage")}",
                                          height: 285,
                                          width: size.width * 0.6,
                                          fit: BoxFit.fill,
                                        ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 140,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                        'at the heighest level of competition. My career goal is to establish myself....',
                                        style: AppTextStyles.normalStyle(
                                            fontSize: 8.0, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 33,
                                  color: AppColors.PurpleColor,
                                  child: Center(
                                    child: Text(
                                      "Personal Information",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, top: 5.0),
                                                child: Text(
                                                  "FULL NAME:",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 2.0, top: 5.0),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelFullName").toString()}",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 5.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "DATE OF BIRTH:",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelDateOfBirth").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "NATIONALITY:",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelNationality").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "STATE:",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelState").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "POSITION: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelPosition").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "HEIGHT: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelHeight").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "WEIGHT: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelWeight").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "PREFERRED FOOT: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelPreferredFoot").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "ALTERNATIVE POSITION: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelAlternativePosition").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "SPOKEN LANGUAGE: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelSpokenLanguage").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "MANAGER'S EMAIL: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelManagersEmail").toString()}",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 5.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                ),
                                                child: Text(
                                                  "MANAGER'S CONTACT: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 2.0,
                                                ),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelManagersContact").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 5.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Text("")
                                        ],
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Card(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 28,
                                        color: AppColors.PurpleColor,
                                        child: Center(
                                          child: Text(
                                            "Current Club",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("SAUS FC"),
                                      ),
                                      Container(
                                        height: 110,
                                        width: double.infinity,
                                        color: AppColors.PurpleColor,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0, top: 10.0),
                                                  child: Text(
                                                    "JOINED                     :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0, top: 10.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelJoin").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    "GAMES PLAYED      :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelGamesPlayed").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    "POSITION PLAYED  :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelPositionPlayed").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    "GOALS SCORED      :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelGoalsScored").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    "BOOKING                 :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelBooking").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        height: 28,
                                        width: double.infinity,
                                        color: AppColors.white,
                                        child: Center(
                                          child: Text(
                                              " SKILLS RATING                   ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        //height: size.height * 0.14,
                                        width: double.infinity,
                                        color: AppColors.PurpleColor,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 10),
                                                  child: Text(
                                                    "PASS ACCURENCY           :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 10, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelPassAccurency").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "DRIBBLE:                           :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelDribble").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "SPEED                               :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelSpeed").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "BALL CONTROL               :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelBallControl").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "SHOOTING POOWER       :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelShootingPower").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "TEAM WORK                    :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelTeamWork").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.0,
                                            ),
                                            Text("")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          color: AppColors.PurpleColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "PREVIOUS CLUB",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 28,
                                          color: AppColors.PurpleColor,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  "SEASON",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0, right: 8),
                                                child: Text(
                                                  "CLUBS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(bottom: 8.0),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: widget
                                                  .playerProfileModel.season.length,
                                              itemBuilder: (context, index) {
                                                final seasonData = widget
                                                    .playerProfileModel
                                                    .season[index];
                                                final clubData = widget
                                                    .playerProfileModel
                                                    .club![index];

                                                Hive.box("profileDataBox")
                                                    .put("seasonData", seasonData);
                                                Hive.box("profileDataBox")
                                                    .put("clubData", clubData);

                                                return Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "${Hive.box("profileDataBox").get("seasonData").toString()}",
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "${Hive.box("profileDataBox").get("clubData").toString()}",
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text("")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 15.0),
                          color: AppColors.aestheticsColor,
                          child: Text(
                            "OVERALL SKILLS",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricCoordination").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toStringAsFixed(2)}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Text("Coach Notes",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "${Hive.box("profileDataBox").get("playerProfileModelCoordCoachNote").toString()}",
                                  style: TextStyle(fontSize: 14),
                                    maxLines: 2,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelCoordCoachName").toString()}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toStringAsFixed(2)}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                        Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricAgility").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toStringAsFixed(2)}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Coach Notes",
                                    textAlign: TextAlign.start,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                  "${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachNote").toString()}",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                maxLines: 2,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachName").toString()}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toStringAsFixed(2)}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                        Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricEndurance").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toStringAsFixed(2)}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Text("Coach Notes",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurCoachNote").toString()}",
                                    style:
                                    TextStyle(fontSize: 14),
                                  maxLines: 2,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelEndurCoachName").toString()}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toStringAsFixed(2)}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                        Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricPower").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toStringAsFixed(2)}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Coach Notes",
                                    textAlign: TextAlign.start,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                  "${Hive.box("profileDataBox").get("playerProfileModelPowerCoachNote").toString()}",
                                  style:
                                  TextStyle(fontSize: 14),
                                maxLines: 2,
                                  ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelPowerCoachName").toString()}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toStringAsFixed(2)}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                        SizedBox(height: 40),
                        RichText(
                          text: TextSpan(
                            text: '',
                            style: AppTextStyles.headingStyles(fontSize: 30.0),
                            children: [
                              TextSpan(
                                text: 'IMAGES GALLERY',
                                style: AppTextStyles.headingStyles(
                                    fontSize: 30.0, color: AppColors.robinEdgeBlue),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.0),
                            child: GridView.builder(
                              itemCount:
                                  widget.playerProfileModel.imageGallery!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 200, 
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                              ),
                              itemBuilder: (context, index) {
                                final imageGallery =
                                    widget.playerProfileModel.imageGallery![index];
                                Hive.box("profileDataBox")
                                    .putAll({"imageGallery": imageGallery});
                                return Hive.box("profileDataBox")
                                        .get("imageGallery")
                                        .toString()
                                        .isEmpty
                                    ? Center(
                                        child: Text(
                                          "",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    : FadeInUpBig(
                                        duration:
                                            const Duration(milliseconds: 1600),
                                        child: InkWell(
                                          onTap: () {},
                                          onHover: (value) {
                                            setState(() {
                                              if (value) {
                                                //hoveredIndex = index;
                                              } else {
                                                //hoveredIndex = null;
                                              }
                                            });
                                          },
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(
                                                    "${Hive.box("profileDataBox").get("imageGallery").toString()}",
                                                    fit: BoxFit.fill,
                                                   ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                              },
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        //if (!Responsive.isMobile(context)) SizedBox(width: 20),
                        // Sidebar
                        //if (!Responsive.isMobile(context))
                      ],
                    )),
                  ),
                ],
              ),
            ),
            tablet: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    //width: size.width * 0.45,
                    //height: size.height * 1.06,
                    child: Card(
                      color: AppColors.aestheticsColor,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/logoweb.png",
                                        width: 35,
                                        height: 35,
                                      ),
                                      Text(
                                        "Player \nProfile",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                  child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Image.network(
                                      "${Hive.box("profileDataBox").get("playerProfileModelFlag").toString()}",
                                      width: 45,
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelShortName").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15),
                            color: AppColors.PurpleColor,
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Card(
                                  child: Hive.box("profileDataBox")
                                          .get("playerProfileModelProfileImage")
                                          .toString()
                                          .isEmpty
                                      ? Image.asset(
                                          "assets/profile_pers_avatar.png",
                                          height: size.height * 0.45,
                                          width: size.width * 0.35,
                                          fit: BoxFit.fill)
                                      : Image.network(
                                          "${Hive.box("profileDataBox").get("playerProfileModelProfileImage").toString()}",
                                          height: size.height * 0.45,
                                          width: size.width * 0.35,
                                          fit: BoxFit.fill,
                                        ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 28,
                                        color: AppColors.PurpleColor,
                                        child: Center(
                                          child: Text(
                                            "Current Club",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("SAUS FC"),
                                      ),
                                      Container(
                                        height: 110,
                                        width: double.infinity,
                                        color: AppColors.PurpleColor,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 10.0),
                                                  child: Text(
                                                    "JOINED                        :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0, top: 10.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelJoin").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    "GAMES PLAYED         :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelGamesPlayed").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    "POSITION PLAYED    :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelPositionPlayed").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    "GOALS SCORED         :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelGoalsScored").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    "BOOKING                    :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelBooking").toString()}",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        height: 28,
                                        width: double.infinity,
                                        color: AppColors.white,
                                        child: Center(
                                          child: Text(
                                              " SKILLS RATING             ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        //height: size.height * 0.14,
                                        width: double.infinity,
                                        color: AppColors.PurpleColor,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 10),
                                                  child: Text(
                                                    "PASS ACCURENCY           :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelPassAccurency").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "DRIBBLE:                            :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelDribble").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "SPEED                                 :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelSpeed").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "BALL CONTROL                 :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelBallControl").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "SHOOTING POOWER         :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelShooting").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0, top: 5.0),
                                                  child: Text(
                                                    "TEAM WORK                       :",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0, left: 2),
                                                  child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelTeamWork").toString()}%",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.0,
                                            ),
                                            Text("")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15),
                            width: double.infinity,
                            height: 140,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                  'at the heighest level of competition. My career goal is to establish myself....',
                                  style: AppTextStyles.normalStyle(
                                      fontSize: 11.0, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 15.0, top: 5.0, right: 15),
                            height: 33,
                            color: AppColors.PurpleColor,
                            child: Center(
                              child: Text(
                                "Personal Information",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin:
                                EdgeInsets.only(left: 15, top: 2.0, right: 15),
                            child: Card(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 5.0),
                                            child: Text(
                                              "FULL NAME:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.0, top: 5.0),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelFullName").toString()}",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "DATE OF BIRTH:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelDateOfBirth").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "NATIONALITY:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelNationality").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "STATE:",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelState").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "POSITION: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelPosition").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "HEIGHT: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelHeight").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "WEIGHT: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelWeight").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "PREFERRED FOOT: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelPreferredFoot").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "ALTERNATIVE POSITION: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelAlternativePosition").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "SPOKEN LANGUAGE: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelSpokenLanguage").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                              "MANAGER'S EMAIL: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelManagersEmail").toString()}",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8.0,
                                            ),
                                            child: Text(
                                              "MANAGER'S CONTACT: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 2.0,
                                            ),
                                            child: Text(
                                              "${Hive.box("profileDataBox").get("playerProfileModelManagersContact").toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text("")
                                    ],
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15),
                            child: Card(
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    color: AppColors.PurpleColor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "PREVIOUS CLUB",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 28,
                                    color: AppColors.PurpleColor,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "SEASON",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 8),
                                          child: Text(
                                            "CLUBS",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: widget
                                            .playerProfileModel.season.length,
                                        itemBuilder: (context, index) {
                                          final seasonData = widget
                                              .playerProfileModel.season[index];
                                          final clubData = widget
                                              .playerProfileModel.club![index];

                                          Hive.box("profileDataBox")
                                              .put("seasonData", seasonData);
                                          Hive.box("profileDataBox")
                                              .put("clubData", clubData);

                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("seasonData").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "${Hive.box("profileDataBox").get("clubData").toString()}",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text("")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 40,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(left: 15.0),
                    color: AppColors.aestheticsColor,
                    child: Text(
                      "OVERALL SKILLS",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricCoordination").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toString()}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Coach Notes",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelCoordCoachNote").toString()}", maxLines: 2,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelCoordCoachName").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                      ),
                      Expanded(
                        child: Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricAgility").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toString()}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Coach Notes",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachNote").toString()}", maxLines: 2,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachName").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 8, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${Hive.box("profileDataBox").get("playerProfileModelMetricEndurance").toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toString()}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28)),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 3.0,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Coach Notes",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurCoachNote").toString()}", maxLines: 2,),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Text(
                                    "-> ${Hive.box("profileDataBox").get("playerProfileModelEndurCoachName").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text("Your Session Result: ",
                                    style: TextStyle(fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toString()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ]),
                            SizedBox(
                              height: 20,
                            ),
                            Text("")
                          ],
                        )),
                      ),
                      Expanded(
                        child: Card(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, top: 8, bottom: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "${Hive.box("profileDataBox").get("playerProfileModelMetricPower").toString()}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Text(
                                            "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toString()}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 28)),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  bottom: 3.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("Coach Notes",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "${Hive.box("profileDataBox").get("playerProfileModelPowerCoachNote").toString()}", maxLines: 2,),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                  ),
                                  child: Text(
                                      "-> ${Hive.box("profileDataBox").get("playerProfileModelPowerCoachName").toString()}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text("Your Session Result: ",
                                      style: TextStyle(fontSize: 16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                      "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toString()}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                              ]),
                              SizedBox(
                                height: 20,
                              ),
                              Text("")
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: '',
                        style: AppTextStyles.headingStyles(fontSize: 30.0),
                        children: [
                          TextSpan(
                            text: 'IMAGES GALLERY',
                            style: AppTextStyles.headingStyles(
                                fontSize: 30.0, color: AppColors.robinEdgeBlue),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.0),
                      child: GridView.builder(
                        itemCount: widget.playerProfileModel.imageGallery!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 250,
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                        ),
                        itemBuilder: (context, index) {
                          final imageGallery =
                          widget.playerProfileModel.imageGallery![index];
                          Hive.box("profileDataBox")
                              .putAll({"imageGallery": imageGallery});
                          return Hive.box("profileDataBox")
                              .get("imageGallery")
                              .toString()
                              .isEmpty
                              ? Center(
                            child: Center(
                                child: Text(
                                  "",
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                              : FadeInUpBig(
                            duration: const Duration(milliseconds: 1600),
                            child: InkWell(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  if (value) {
                                    //hoveredIndex = index;
                                  } else {
                                    //hoveredIndex = null;
                                  }
                                });
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin:
                                    EdgeInsets.only(left: 8, right: 8),
                                    child: Image.network(
                                        "${Hive.box("profileDataBox").get("imageGallery").toString()}",
                                        fit: BoxFit.fill,
                                        width: size.width * 0.2),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )),
                  SizedBox(
                    height: 30,
                  ),

                  //if (!Responsive.isMobile(context)) SizedBox(width: 20),
                  // Sidebar
                  //if (!Responsive.isMobile(context))
                ],
              )),
            ),
            desktop: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.all(20),
                    constraints: BoxConstraints(maxWidth: 1532.0),
                    child: SafeArea(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            //width: size.width * 0.45,
                            //height: size.height * 1.06,
                            child: Card(
                              color: AppColors.aestheticsColor,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/logoweb.png",
                                                width: 35,
                                                height: 35,
                                              ),
                                              Text(
                                                "Player \nProfile",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                          child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          children: [
                                            Image.network(
                                              "${Hive.box("profileDataBox").get("playerProfileModelFlag").toString()}",
                                              width: 45,
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                "${Hive.box("profileDataBox").get("playerProfileModelShortName").toString()}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, right: 15),
                                    color: AppColors.PurpleColor,
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Card(
                                          child: Hive.box("profileDataBox")
                                                  .get(
                                                      "playerProfileModelProfileImage")
                                                  .toString()
                                                  .isEmpty
                                              ? Image.asset(
                                                  "assets/profile_pers_avatar.png",
                                                  height: size.height * 0.4,
                                                  width: size.width * 0.14,
                                                  fit: BoxFit.fill)
                                              : Image.network(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelProfileImage").toString()}",
                                                  height: size.height * 0.4,
                                                  width: size.width * 0.18,
                                                  fit: BoxFit.fill,
                                                ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.24,
                                        child: Card(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 28,
                                                color: AppColors.PurpleColor,
                                                child: Center(
                                                  child: Text(
                                                    "Current Club",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("SAUS FC ACADEMY"),
                                              ),
                                              Container(
                                                height: 110,
                                                width: double.infinity,
                                                color: AppColors.PurpleColor,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 8.0,
                                                                  top: 10.0),
                                                          child: Text(
                                                            "JOINED                       :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 2.0,
                                                                  top: 10.0),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelJoin").toString()}",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "GAMES PLAYED        :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelGamesPlayed").toString()}",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "POSITION PLAYED   :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelPositionPlayed").toString()}",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "GOALS SCORED       :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelGoalsScored").toString()}",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 8.0),
                                                          child: Text(
                                                            "BOOKING                   :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight:
                                                                    FontWeight.bold,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 2.0),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelBooking").toString()}",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                height: 28,
                                                width: double.infinity,
                                                color: AppColors.white,
                                                child: Center(
                                                  child: Text(
                                                      " SKILLS RATING                   ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                              ),
                                              Container(
                                                //height: size.height * 0.14,
                                                width: double.infinity,
                                                color: AppColors.PurpleColor,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 10),
                                                          child: Text(
                                                            "PASS ACCURENCY             :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 10, left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelPassAccurency").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 5.0),
                                                          child: Text(
                                                            "DRIBBLE                               :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 5.0,
                                                                  left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelDribble").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 5.0),
                                                          child: Text(
                                                            "SPEED                                   :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 5.0,
                                                                  left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelSpeed").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 5.0),
                                                          child: Text(
                                                            "BALL CONTROL                   :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 5.0,
                                                                  left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelBallControl").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 5.0),
                                                          child: Text(
                                                            "SHOOTING POOWER          :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 5.0,
                                                                  left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelShootingPower").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 5.0,
                                                                  top: 5.0),
                                                          child: Text(
                                                            "TEAM WORK                        :",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  top: 5.0,
                                                                  left: 2),
                                                          child: Text(
                                                            "${Hive.box("profileDataBox").get("playerProfileModelTeamWork").toString()}%",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 10.0),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 1.0,
                                                    ),
                                                    Text("")
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15, right: 15),
                                    width: double.infinity,
                                    height: 140,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                          'at the heighest level of competition. My career goal is to establish myself....',
                                          style: AppTextStyles.normalStyle(
                                              fontSize: 11.0, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 15.0, top: 5.0, right: 15),
                                    height: 33,
                                    color: AppColors.PurpleColor,
                                    child: Center(
                                      child: Text(
                                        "Personal Information",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.45,
                                    margin: EdgeInsets.only(
                                        left: 15, top: 2.0, right: 15),
                                    child: Card(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0, top: 5.0),
                                                    child: Text(
                                                      "FULL NAME:",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 2.0, top: 5.0),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelFullName").toString()}",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "DATE OF BIRTH:",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelDateOfBirth").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "NATIONALITY:",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelNationality").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "STATE:",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelState").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "POSITION: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelPosition").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "HEIGHT: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelHeight").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "WEIGHT: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelWeight").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "PREFERRED FOOT: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelPreferredFoot").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "ALTERNATIVE POSITION: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelAlternativePosition").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "SPOKEN LANGUAGE: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelSpokenLanguage").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 8.0),
                                                    child: Text(
                                                      "MANAGER'S EMAIL: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelManagersEmail").toString()}",
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 3.0,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 8.0,
                                                    ),
                                                    child: Text(
                                                      "MANAGER'S CONTACT: ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                      left: 2.0,
                                                    ),
                                                    child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelManagersContact").toString()}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Text("")
                                            ],
                                          ),
                                          SizedBox(
                                            width: 60,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15),
                                    child: Card(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            color: AppColors.PurpleColor,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                "PREVIOUS CLUB",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 28,
                                            color: AppColors.PurpleColor,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0),
                                                  child: Text(
                                                    "SEASON",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 8.0, right: 8),
                                                  child: Text(
                                                    "CLUBS",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: widget.playerProfileModel
                                                    .season.length,
                                                itemBuilder: (context, index) {
                                                  final seasonData = widget
                                                      .playerProfileModel
                                                      .season[index];
                                                  final clubData = widget
                                                      .playerProfileModel
                                                      .club![index];

                                                  Hive.box("profileDataBox").put(
                                                      "seasonData", seasonData);
                                                  Hive.box("profileDataBox")
                                                      .put("clubData", clubData);

                                                  return Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Text(
                                                          "${Hive.box("profileDataBox").get("seasonData").toString()}",
                                                          style: TextStyle(
                                                              color: Colors.black),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Text(
                                                          "${Hive.box("profileDataBox").get("clubData").toString()}",
                                                          style: TextStyle(
                                                              color: Colors.black),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Text("")
                                ],
                              ),
                            ),
                          ),
                        ),
                        //if (!Responsive.isMobile(context)) SizedBox(width: 20),
                        // Sidebar
                        //if (!Responsive.isMobile(context))
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Search(),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.16,
                                color: AppColors.aestheticsColor,
                                child: Center(
                                  child: Text(
                                    "OVERALL SKILLS",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Card(
                                        child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8, bottom: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "${Hive.box("profileDataBox").get("playerProfileModelMetricCoordination").toString()}",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 8.0),
                                                  child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toStringAsFixed(2)}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 28)),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15.0,
                                            bottom: 3.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Coach Notes",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelCoordCoachNote").toString()}",
                                                  maxLines: 2,
                                                ),
                                              )),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15.0,
                                            ),
                                            child: Text(
                                                "-> ${Hive.box("profileDataBox").get("playerProfileModelCoordCoachName").toString()}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                    "Your Session Result: ",
                                                    style:
                                                        TextStyle(fontSize: 16)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelCoordScore").toStringAsFixed(2)}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18)),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("")
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Expanded(
                                    child: Card(
                                        child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8, bottom: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelMetricAgility").toString()}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20)),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 8.0),
                                                  child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toStringAsFixed(2)}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 28)),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15.0,
                                            bottom: 3.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Coach Notes",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachNote").toString()}",
                                                  maxLines: 2,
                                                ),
                                              )),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15.0,
                                            ),
                                            child: Text(
                                                "-> ${Hive.box("profileDataBox").get("playerProfileModelAgilityCoachName").toString()}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                    "Your Session Result: ",
                                                    style:
                                                        TextStyle(fontSize: 16)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelAgilityScore").toStringAsFixed(2)}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18)),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("")
                                      ],
                                    )),
                                  ),
                                ],
                              ),
                              //Categories(),
                              SizedBox(height: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Card(
                                        child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8, bottom: 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelMetricEndurance").toString()}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20)),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 8.0),
                                                  child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toStringAsFixed(2)}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 28)),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 15.0,
                                            bottom: 3.0,
                                          ),
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Coach Notes",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Expanded(
                                                  child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurCoachNote").toString()}",
                                                  maxLines: 2,
                                                ),
                                              )),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15.0,
                                            ),
                                            child: Text(
                                                "-> ${Hive.box("profileDataBox").get("playerProfileModelEndurCoachName").toString()}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15.0),
                                                child: Text(
                                                    "Your Session Result: ",
                                                    style:
                                                        TextStyle(fontSize: 16)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                    "${Hive.box("profileDataBox").get("playerProfileModelEndurScore").toStringAsFixed(2)}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18)),
                                              ),
                                            ]),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text("")
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Expanded(
                                    child: Card(
                                        child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, top: 8, bottom: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelMetricPower").toString()}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Text(
                                                        "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toStringAsFixed(2)}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 28)),
                                                  ),
                                                ]),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15.0,
                                              bottom: 3.0,
                                            ),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Coach Notes",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                    child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelPowerCoachNote").toString()}",
                                                    maxLines: 2,
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15.0,
                                              ),
                                              child: Text(
                                                  "-> ${Hive.box("profileDataBox").get("playerProfileModelPowerCoachName").toString()}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 15.0),
                                                  child: Text(
                                                      "Your Session Result: ",
                                                      style: TextStyle(
                                                          fontSize: 16)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5.0),
                                                  child: Text(
                                                      "${Hive.box("profileDataBox").get("playerProfileModelPowerScore").toStringAsFixed(2)}",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                ),
                                              ]),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text("")
                                        ],
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                              //RecentPosts(),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                      text: '',
                      style: AppTextStyles.headingStyles(fontSize: 30.0),
                      children: [
                        TextSpan(
                          text: 'IMAGES GALLERY',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30.0, color: AppColors.robinEdgeBlue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.0),
                      child: GridView.builder(
                        itemCount: widget.playerProfileModel.imageGallery!.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 250,
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                        ),
                        itemBuilder: (context, index) {
                          final imageGallery =
                              widget.playerProfileModel.imageGallery![index];
                          Hive.box("profileDataBox")
                              .putAll({"imageGallery": imageGallery});
                          return Hive.box("profileDataBox")
                                  .get("imageGallery")
                                  .toString()
                                  .isEmpty
                              ? Center(
                                  child: Center(
                                      child: Text(
                                    "",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              : FadeInUpBig(
                                  duration: const Duration(milliseconds: 1600),
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        if (value) {
                                          //hoveredIndex = index;
                                        } else {
                                          //hoveredIndex = null;
                                        }
                                      });
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 8, right: 8),
                                          child: Image.network(
                                              "${Hive.box("profileDataBox").get("imageGallery").toString()}",
                                              fit: BoxFit.fill,
                                              width: size.width * 0.2),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                        },
                      )),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            paddingWidth: size.width * 0.02,
            bgColor: AppColors.bgColor2,
          ),
          Container(
            color: Colors.white,
            height: 70,
            width: double.infinity,
          ),
          FooterClass()
        ],
      ),
    );
  }
}
