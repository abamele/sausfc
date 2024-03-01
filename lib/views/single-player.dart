import 'package:animate_do/animate_do.dart';
import 'package:chewie/chewie.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saus_fc/models/player-profile-model.dart';
import 'package:saus_fc/views/single-helper.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../providers/player-profile-provider.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';
import 'footer.dart';

class SinglePlayer extends StatefulWidget {
  SinglePlayer({super.key, required this.playerProfileModel});
  PlayerProfileModel playerProfileModel;

  @override
  State<SinglePlayer> createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  final onH0verEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  var hoveredIndex;

  late ChewieController _chewieController;

  final videoPlayerController = VideoPlayerController.asset('');

  @override
  void initState() {
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: true,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    // IMPORTANT to dispose of all the used resources
    videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0.0,
        toolbarHeight: 90,
        title: MaterialButton(
          elevation: 8,
          child: Image.asset("assets/logoweb.png", width: 55, height: 55),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainDashBoard()));
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            //final data = playerProfileProvider.getAllPlayerProfileDataList[index];
            return SingleHelper(
              mobile: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: size.width,
                      //height: size.height * 1.7,
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
                                      Flag.fromCode(
                                        FlagsCode.KE,
                                        height: 18,
                                        width: 35,
                                        fit: BoxFit.fill,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "${widget.playerProfileModel.fullName}",
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
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "${widget.playerProfileModel.imageUrl}",
                                          height: 260,
                                          fit: BoxFit.fill,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  //margin: EdgeInsets.all(8.0),
                                  width: double.infinity,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                        'at the heighest level of competition. My career goal is to establish myself....',
                                        style: AppTextStyles.normalStyle(
                                            fontSize: 11.0,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 270,
                                  width: size.width,
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
                                          height: 90,
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
                                                      "JOINED                             :",
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
                                                            left: 8.0,
                                                            top: 10.0),
                                                    child: Text(
                                                      "",
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
                                                      "GAMES PLAYED              :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "${widget.playerProfileModel.gamesPlayed}",
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
                                                      "POSITION PLAYED          :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "${widget.playerProfileModel.positionPlayed}",
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
                                                      "GOALS SCORED              :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "${widget.playerProfileModel.goalsScored}",
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
                                                      "BOOKING                          :",
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
                                                            left: 3.0),
                                                    child: Text(
                                                      " ${widget.playerProfileModel.booking}",
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
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("PREVIOUS CLUB"),
                                        ),
                                        Container(
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
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("2023"),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("SAUS FC"),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 28,
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
                              child: Card(
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "AHMED ABDINASIR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "06/05/2001:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "KENYA",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "SAKARYA",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "RIGHT MIDFIELDER",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "1.69 m:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "58 Kg:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "MIDFIELDER",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "ENGLISH, TURKISH, \nSWAHILI, SOMALI",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "abamele90@gmail.com",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "+905466716860",
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
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          alignment: Alignment.topRight,
                                          height: 30,
                                          width: size.width * 0.42,
                                          color: AppColors.aestheticsColor,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                top: 5.0),
                                            child: Text(
                                                "  AWARD/ACHIEVEMENTS         "),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            right: 10.0,
                                          ),
                                          //height: size.height * 0.1,
                                          width: size.width * 0.42,
                                          color: AppColors.PurpleColor,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "---> MOST AVAILABLE PLAYER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  3.0,
                                                ),
                                                child: Text(
                                                  "---> FAIR PLAY PLAYER AWARD UNIVERSITY CUP",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  3.0,
                                                ),
                                                child: Text(
                                                  "---> PLAYER OF THE WEEK FRIENDLY MATCH",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text("")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topRight,
                                              height: 28,
                                              width: size.width * 0.42,
                                              color: AppColors.aestheticsColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    right: 8.0,
                                                    top: 5.0),
                                                child: Text(
                                                    " SKILLS RATING                   "),
                                              ),
                                            ),
                                            Container(
                                              //height: size.height * 0.14,
                                              width: size.width * 0.42,
                                              color: AppColors.PurpleColor,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 10),
                                                        child: Text(
                                                          "PASS ACCURENCY           :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 10),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "DRIBBLE:                            :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 3.0,
                                                        ),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "SPEED                                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%71,43",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "BALL CONTROL                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%90",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "SHOOTING POOWER        :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "TEAM WORK                      :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%90",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text("")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: size.width,
                      margin: EdgeInsets.only(top: 15, left: 8.0, right: 8.0),
                      color: AppColors.aestheticsColor,
                      child: Center(
                        child: Text(
                          "OVERALL SKILLS",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: size.width,
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
                                      "${widget.playerProfileModel.metricCoordination}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                        "${widget.playerProfileModel.coordScore}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "${widget.playerProfileModel.coordCoachNote}"),
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
                                  "-> ${widget.playerProfileModel.coordCoachName}",
                                  style: GoogleFonts.poppins(
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
                                  "${widget.playerProfileModel.coordScore}",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: size.width,
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "${widget.playerProfileModel.metricScore}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                        "${widget.playerProfileModel.agilityScore}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "${widget.playerProfileModel.agilityCoachNote}"),
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
                                  "-> ${widget.playerProfileModel.agilityCoachName}",
                                  style: GoogleFonts.poppins(
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
                                  "${widget.playerProfileModel.agilityScore}",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      width: size.width,
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              top: 8,
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "${widget.playerProfileModel.metricEndurance}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                        "${widget.playerProfileModel.endurScore}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "${widget.playerProfileModel.endurCoachNote}"),
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
                                  "-> ${widget.playerProfileModel.endurCoachName}",
                                  style: GoogleFonts.poppins(
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
                                  "${widget.playerProfileModel.endurScore}",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: size.width,
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
                                      "${widget.playerProfileModel.metricPower}",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                        "${widget.playerProfileModel.powerScore}",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "${widget.playerProfileModel.powerCoachNote}"),
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
                                  "-> ${widget.playerProfileModel.powerCoachName}",
                                  style: GoogleFonts.poppins(
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
                                  "${widget.playerProfileModel.powerScore}",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Chewie(
                              controller: _chewieController,
                            ),
                          ),
                        ),
                        /*SizedBox(
                            width: 8.0,
                          ),
                          Image.asset(
                            "assets/logoweb.png",
                            height: 270,
                          )*/
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
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
                    GridView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 380,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        var image = images[index];
                        return FadeInUpBig(
                          duration: const Duration(milliseconds: 1600),
                          child: InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                if (value) {
                                  hoveredIndex = index;
                                } else {
                                  hoveredIndex = null;
                                }
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/maillot.jpeg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Visibility(
                                  visible: index == hoveredIndex,
                                  child: AnimatedContainer(
                                    width: MediaQuery.of(context).size.width *
                                        0.47,
                                    duration: const Duration(milliseconds: 600),
                                    transform: index == hoveredIndex
                                        ? onH0verEffect
                                        : null,
                                    curve: Curves.easeIn,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          colors: [
                                            AppColors.themeColor
                                                .withOpacity(1.0),
                                            AppColors.themeColor
                                                .withOpacity(0.9),
                                            AppColors.themeColor
                                                .withOpacity(0.8),
                                            AppColors.themeColor
                                                .withOpacity(0.6),
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Aba Mele                                             ',
                                          style: AppTextStyles.montserratStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        Constants.sizedBox(height: 15.0),
                                        Text(
                                          'Orta Saha                                            ',
                                          style: AppTextStyles.normalStyle(
                                              color: Colors.black87),
                                          //textAlign: TextAlign.center,
                                        ),
                                        Constants.sizedBox(height: 30.0),
                                        InkWell(
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.white,
                                            child: Image.asset(
                                              AppAssets.share,
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SinglePlayer()));*/
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FooterClass()
                  ],
                ),
              ),
              tablet: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: size.width,
                      //height: size.height * 1.7,
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
                                      Flag.fromCode(
                                        FlagsCode.KE,
                                        height: 18,
                                        width: 35,
                                        fit: BoxFit.fill,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "AHMED ABDINASIR",
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
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/ahmedprofile.jpeg",
                                          height: 260,
                                          fit: BoxFit.fill,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  //margin: EdgeInsets.all(8.0),
                                  width: double.infinity,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                        'at the heighest level of competition. My career goal is to establish myself....',
                                        style: AppTextStyles.normalStyle(
                                            fontSize: 11.0,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 270,
                                  width: size.width,
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
                                          height: 90,
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
                                                      "JOINED                             :",
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
                                                            left: 8.0,
                                                            top: 10.0),
                                                    child: Text(
                                                      "2023",
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
                                                      "GAMES PLAYED              :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "6",
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
                                                      "POSITION PLAYED          :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "Midfield",
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
                                                      "GOALS SCORED              :",
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
                                                            left: 8.0),
                                                    child: Text(
                                                      "2",
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
                                                      "BOOKING                          :",
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
                                                            left: 3.0),
                                                    child: Text(
                                                      " 0 Yellow Card/ 0 Red Card",
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
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("PREVIOUS CLUB"),
                                        ),
                                        Container(
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
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("2023"),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text("SAUS FC"),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              height: 28,
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
                              child: Card(
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "AHMED ABDINASIR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "06/05/2001:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "KENYA",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "SAKARYA",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "RIGHT MIDFIELDER",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "1.69 m:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "58 Kg:",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "MIDFIELDER",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "ENGLISH, TURKISH, \nSWAHILI, SOMALI",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "abamele90@gmail.com",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
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
                                                  left: 8.0, top: 5.0),
                                              child: Text(
                                                "+905466716860",
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
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          alignment: Alignment.topRight,
                                          height: 30,
                                          width: size.width * 0.42,
                                          color: AppColors.aestheticsColor,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                top: 5.0),
                                            child: Text(
                                                "  AWARD/ACHIEVEMENTS         "),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            right: 10.0,
                                          ),
                                          //height: size.height * 0.1,
                                          width: size.width * 0.42,
                                          color: AppColors.PurpleColor,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "---> MOST AVAILABLE PLAYER",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  3.0,
                                                ),
                                                child: Text(
                                                  "---> FAIR PLAY PLAYER AWARD UNIVERSITY CUP",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  3.0,
                                                ),
                                                child: Text(
                                                  "---> PLAYER OF THE WEEK FRIENDLY MATCH",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8.0),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text("")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topRight,
                                              height: 28,
                                              width: size.width * 0.42,
                                              color: AppColors.aestheticsColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    right: 8.0,
                                                    top: 5.0),
                                                child: Text(
                                                    " SKILLS RATING                   "),
                                              ),
                                            ),
                                            Container(
                                              //height: size.height * 0.14,
                                              width: size.width * 0.42,
                                              color: AppColors.PurpleColor,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 10),
                                                        child: Text(
                                                          "PASS ACCURENCY           :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 10),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "DRIBBLE:                            :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          left: 3.0,
                                                        ),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "SPEED                                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%71,43",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "BALL CONTROL                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%90",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "SHOOTING POOWER        :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%80",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 5.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "TEAM WORK                      :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 3.0,
                                                                top: 5.0),
                                                        child: Text(
                                                          "%90",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 8.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text("")
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: size.width,
                      margin: EdgeInsets.only(top: 15, left: 8.0, right: 8.0),
                      color: AppColors.aestheticsColor,
                      child: Center(
                        child: Text(
                          "OVERALL SKILLS",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: size.width,
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
                                  Text("Coordination",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text("72.00",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Good at squaring up the ball carrier. He keeps his pad level low at the point of contact."),
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
                              child: Text("-> ABA MELE",
                                  style: GoogleFonts.poppins(
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
                              child: Text("72.00",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: size.width,
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Agility",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text("72.00",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Good at squaring up the ball carrier. He keeps his pad level low at the point of contact."),
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
                              child: Text("-> ABA MELE",
                                  style: GoogleFonts.poppins(
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
                              child: Text("72.00",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      width: size.width,
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              top: 8,
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Endurance",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text("72.00",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Good at squaring up the ball carrier. He keeps his pad level low at the point of contact. "),
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
                              child: Text("-> ABA MELE",
                                  style: GoogleFonts.poppins(
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
                              child: Text("72.00",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: size.width,
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
                                  Text("Power",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text("72.00",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 46)),
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
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      "Good at squaring up the ball carrier. He keeps his pad level low at the point of contact. ---> ABA MELE"),
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
                              child: Text("-> ABA MELE",
                                  style: GoogleFonts.poppins(
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
                              child: Text("72.00",
                                  style: GoogleFonts.poppins(
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
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height * 0.5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Chewie(
                              controller: _chewieController,
                            ),
                          ),
                        ),
                        /*SizedBox(
                            width: 8.0,
                          ),
                          Image.asset(
                            "assets/logoweb.png",
                            height: 270,
                          )*/
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
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
                    GridView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 380,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 3,
                      ),
                      itemBuilder: (context, index) {
                        var image = images[index];
                        return FadeInUpBig(
                          duration: const Duration(milliseconds: 1600),
                          child: InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                if (value) {
                                  hoveredIndex = index;
                                } else {
                                  hoveredIndex = null;
                                }
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/maillot.jpeg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Visibility(
                                  visible: index == hoveredIndex,
                                  child: AnimatedContainer(
                                    width: MediaQuery.of(context).size.width *
                                        0.315,
                                    duration: const Duration(milliseconds: 600),
                                    transform: index == hoveredIndex
                                        ? onH0verEffect
                                        : null,
                                    curve: Curves.easeIn,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          colors: [
                                            AppColors.themeColor
                                                .withOpacity(1.0),
                                            AppColors.themeColor
                                                .withOpacity(0.9),
                                            AppColors.themeColor
                                                .withOpacity(0.8),
                                            AppColors.themeColor
                                                .withOpacity(0.6),
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Aba Mele                                             ',
                                          style: AppTextStyles.montserratStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        Constants.sizedBox(height: 15.0),
                                        Text(
                                          'Orta Saha                                            ',
                                          style: AppTextStyles.normalStyle(
                                              color: Colors.black87),
                                          //textAlign: TextAlign.center,
                                        ),
                                        Constants.sizedBox(height: 30.0),
                                        InkWell(
                                          child: CircleAvatar(
                                            maxRadius: 25,
                                            backgroundColor: Colors.white,
                                            child: Image.asset(
                                              AppAssets.share,
                                              width: 25,
                                              height: 25,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          onTap: () {
                                            /*Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SinglePlayer()));*/
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FooterClass()
                  ],
                ),
              ),
              desktop: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          width: size.width * 0.45,
                          //height: size.height * 1.06,
                          child: Card(
                            color: AppColors.aestheticsColor,
                            margin: EdgeInsets.only(left: 20),
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
                                            "${widget.playerProfileModel.flag}",
                                            width: 45,
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${widget.playerProfileModel.fullName}",
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
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/ahmedprofile.jpeg",
                                              height: 260,
                                              fit: BoxFit.fill,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: size.width * 0.23,
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("SAUS FC"),
                                            ),
                                            Container(
                                              height: 90,
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
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0,
                                                                top: 10.0),
                                                        child: Text(
                                                          "JOINED                                      :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 2.0,
                                                                top: 10.0),
                                                        child: Text(
                                                          "${widget.playerProfileModel.join}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: Text(
                                                          "GAMES PLAYED                      :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          "${widget.playerProfileModel.gamesPlayed}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: Text(
                                                          "POSITION PLAYED                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          "${widget.playerProfileModel.positionPlayed}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: Text(
                                                          "GOALS SCORED                     :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          "${widget.playerProfileModel.goalsScored}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
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
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: Text(
                                                          "BOOKING                                 :",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          "${widget.playerProfileModel.booking}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text("PREVIOUS CLUB"),
                                            ),
                                            Container(
                                              height: 28,
                                              color: AppColors.PurpleColor,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8),
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text("2023"),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                            "${widget.playerProfileModel.season}"),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                            "${widget.playerProfileModel.club}"),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                            "${widget.playerProfileModel.club}"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  width: double.infinity,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'As a middfield, my primary objective is become a valuable assert to my team by consistently performing, performing'
                                        'at the heighest level of competition. My career goal is to establish myself....',
                                        style: AppTextStyles.normalStyle(
                                            fontSize: 11.0,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15.0, top: 5.0),
                                  height: 28,
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
                                  margin: EdgeInsets.only(left: 15, top: 2.0),
                                  width: double.infinity,
                                  child: Card(
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.fullName}",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.dateOfBirth}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.nationality}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.state}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.position}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.height}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.weight}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.preferredFoot}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.alternativePosition}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 11),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Expanded(
                                                    child: Text(
                                                      "${widget.playerProfileModel.spokenLanguage}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.managersEmail}",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "${widget.playerProfileModel.managersContact}",
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
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 8),
                                              alignment: Alignment.topRight,
                                              height: 28,
                                              width: size.width * 0.16,
                                              color: AppColors.aestheticsColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    right: 8.0,
                                                    top: 5.0),
                                                child: Text(
                                                    "  AWARD/ACHIEVEMENTS         "),
                                              ),
                                            ),
                                            Container(
                                              //height: size.height * 0.07,
                                              width: size.width * 0.16,
                                              color: AppColors.PurpleColor,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 3.0,
                                                            top: 10.0),
                                                    child: Text(
                                                      "---> MOST AVAILABLE PLAYER",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 8.0),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      3.0,
                                                    ),
                                                    child: Text(
                                                      "---> FAIR PLAY PLAYER AWARD UNIVERSITY CUP",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 8.0),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      3.0,
                                                    ),
                                                    child: Text(
                                                      "---> PLAYER OF THE WEEK FRIENDLY MATCH",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 8.0),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text("")
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  alignment: Alignment.topRight,
                                                  height: 28,
                                                  width: size.width * 0.16,
                                                  color:
                                                      AppColors.aestheticsColor,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            right: 8.0,
                                                            top: 5.0),
                                                    child: Text(
                                                        " SKILLS RATING                   "),
                                                  ),
                                                ),
                                                Container(
                                                  //height: size.height * 0.14,
                                                  width: size.width * 0.16,
                                                  color: AppColors.PurpleColor,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 10),
                                                            child: Text(
                                                              "PASS ACCURENCY                         :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 10),
                                                            child: Text(
                                                              "${widget.playerProfileModel.passAccurency}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 5.0),
                                                            child: Text(
                                                              "DRIBBLE:                                        :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5.0),
                                                            child: Expanded(
                                                              child: Text(
                                                                "${widget.playerProfileModel.dribble}",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 5.0),
                                                            child: Text(
                                                              "SPEED                                            :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              "${widget.playerProfileModel.speed}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 5.0),
                                                            child: Text(
                                                              "BALL CONTROL                             :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              "${widget.playerProfileModel.ballControl}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 5.0),
                                                            child: Text(
                                                              "SHOOTING POOWER                     :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              "${widget.playerProfileModel.shootingPower}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5.0,
                                                                    top: 5.0),
                                                            child: Text(
                                                              "TEAM WORK                                  :",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    top: 5.0),
                                                            child: Text(
                                                              "${widget.playerProfileModel.teamWork}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Text("")
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text("")
                                          ],
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
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: size.width * 0.16,
                              margin: EdgeInsets.only(top: 15),
                              color: AppColors.aestheticsColor,
                              child: Center(
                                child: Text(
                                  "OVERALL SKILLS",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: size.width * 0.265,
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
                                              Text("Coordination",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text(
                                                    "${widget.playerProfileModel.coordScore.toStringAsFixed(2)}",
                                                    style: GoogleFonts.poppins(
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
                                              style: GoogleFonts.poppins(
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
                                                  "${widget.playerProfileModel.coordCoachNote}"),
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
                                              "-> ${widget.playerProfileModel.coordCoachName}",
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text("Your Session Result: ",
                                              style: TextStyle(fontSize: 16)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                              "${widget.playerProfileModel.coordScore.toStringAsFixed(2)}",
                                              style: GoogleFonts.poppins(
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
                                SizedBox(
                                  width: 8.0,
                                ),
                                Container(
                                  width: size.width * 0.265,
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
                                              Text("Agility",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text(
                                                    "${widget.playerProfileModel.agilityScore.toStringAsFixed(2)}",
                                                    style: GoogleFonts.poppins(
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
                                              style: GoogleFonts.poppins(
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
                                                  "${widget.playerProfileModel.agilityCoachNote}"),
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
                                              "-> ${widget.playerProfileModel.agilityCoachName}",
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text("Your Session Result: ",
                                              style: TextStyle(fontSize: 16)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                              "${widget.playerProfileModel.endurScore.toStringAsFixed(2)}",
                                              style: GoogleFonts.poppins(
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
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: size.width * 0.265,
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
                                              Text("Endurance",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text(
                                                    "${widget.playerProfileModel.endurScore.toStringAsFixed(2)}",
                                                    style: GoogleFonts.poppins(
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
                                              style: GoogleFonts.poppins(
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
                                                  "${widget.playerProfileModel.endurCoachNote}"),
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
                                              "-> ${widget.playerProfileModel.endurCoachName}",
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text("Your Session Result: ",
                                              style: TextStyle(fontSize: 16)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                              "${widget.playerProfileModel.endurScore.toStringAsFixed(2)}",
                                              style: GoogleFonts.poppins(
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
                                SizedBox(
                                  width: 8.0,
                                ),
                                Container(
                                  width: size.width * 0.265,
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
                                              Text("Power",
                                                  style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text(
                                                    "${widget.playerProfileModel.powerScore.toStringAsFixed(2)}",
                                                    style: GoogleFonts.poppins(
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
                                              style: GoogleFonts.poppins(
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
                                                  "${widget.playerProfileModel.powerCoachNote}"),
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
                                              "-> ${widget.playerProfileModel.powerCoachName}",
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text("Your Session Result: ",
                                              style: TextStyle(fontSize: 16)),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                              "${widget.playerProfileModel.powerScore.toStringAsFixed(2)}",
                                              style: GoogleFonts.poppins(
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
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: size.width * 0.38,
                                  height: size.height * 0.4,
                                  child: Chewie(
                                    controller: _chewieController,
                                  ),
                                ),
                                /*SizedBox(
                                width: 8.0,
                              ),
                              Image.asset(
                                "assets/logoweb.png",
                                height: 270,
                              )*/
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("")
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
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
                            horizontal: size.width * 0.01),
                        child: buildProjectGridView(crossAxisCount: 4)),
                    SizedBox(
                      height: 30,
                    ),
                    FooterClass()
                  ],
                ),
              ),
              //paddingWidth: size.width * 0.1,
              bgColor: AppColors.bgColor,
            );
          }),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Container(
            child: Text(
          "Metric",
          style: TextStyle(color: Colors.white),
        )),
      ),
      DataColumn(
        label: Text("Score", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Average Score", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Coach Notes", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Coach Name", style: TextStyle(color: Colors.white)),
      ),
    ];
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 380,
        mainAxisSpacing: 15,
        crossAxisSpacing: 3,
      ),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/stopper.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                /*Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    width: MediaQuery.of(context).size.width * 0.185,
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withOpacity(1.0),
                            AppColors.themeColor.withOpacity(0.9),
                            AppColors.themeColor.withOpacity(0.8),
                            AppColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Aba Mele                                             ',
                          style: AppTextStyles.montserratStyle(
                              color: Colors.black87, fontSize: 20),
                        ),
                        Constants.sizedBox(height: 15.0),
                        Text(
                          'Orta Saha                                            ',
                          style:
                              AppTextStyles.normalStyle(color: Colors.black87),
                          //textAlign: TextAlign.center,
                        ),
                        Constants.sizedBox(height: 30.0),
                        InkWell(
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              AppAssets.share,
                              width: 25,
                              height: 25,
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SinglePlayer()));*/
                          },
                        )
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
