import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals/app-color.dart';
import '../globals/app-styles.dart';
import '../helpers/player-profile-responsive.dart';
import '../models/player-profile-model.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';
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
    return Scaffold(
      backgroundColor: AppColors.bgColor2,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor2,
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
      body: PlayerProfileResponsive(
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
                        Column(
                          children: [
                            Container(
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
                                                    "test",
                                                    width: 45,
                                                    height: 20,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Text(
                                                      "test",
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
                                      margin: EdgeInsets.only(left: 8.0, right: 8.0),
                                      color: AppColors.PurpleColor,
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Card(
                                      child: Image.asset(
                                        "assets/profile_abdikani.png",
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
                                                fontSize: 11.0,
                                                color: Colors.black),
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
                                    Container(
                                      width: double.infinity,
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
                                                          left: 2.0, top: 5.0),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0,),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0,),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Expanded(
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0, ),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 11,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 3.0,),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
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
                                                        left: 2.0,),
                                                      child: Text(
                                                        "test",
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
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
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
                                                          "JOINED                                       :",
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
                                                          "test",
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
                                                          "GAMES PLAYED                       :",
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
                                                          "test",
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
                                                          "POSITION PLAYED                  :",
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
                                                          "test",
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
                                                          "GOALS SCORED                       :",
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
                                                          "test",
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
                                                          "BOOKING                                   :",
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
                                                          "test",
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
                                                          "PASS ACCURENCY                    :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 10, left: 2),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0),
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
                                                          "DRIBBLE:                                      :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 5.0, left: 2),
                                                        child: Expanded(
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10.0),
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
                                                          "SPEED                                           :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 5.0, left: 2),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0),
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
                                                          "BALL CONTROL                          :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 5.0, left: 2),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0),
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
                                                          "SHOOTING POOWER                 :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 5.0, left: 2),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0),
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
                                                          "TEAM WORK                                :",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(top: 5.0, left: 2),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.white,
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
                                    Container(
                                      width: double.infinity,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              color: AppColors.PurpleColor,
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "PREVIOUS CLUB",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                      FontWeight.bold),
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
                                            Container(
                                              width: double.infinity,
                                              child: Padding(
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
                                                          child: Text(
                                                            "2023",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text("2024",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text("SAUS FC ACADEMY",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                          child: Text("SAUS FC ACADEMY",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                        ),
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
                                      height: 25,
                                    ),
                                    Text("")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            Container(
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                              itemCount: 8,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 380,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 3,
                              ),
                              itemBuilder: (context, index) {
                                //var image = images[index];
                                return FadeInUpBig(
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
                                          margin: EdgeInsets.only(left: 8, right: 8),
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(
                                                image: AssetImage("assets/persImage.jpeg"),
                                                fit: BoxFit.fill),
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
              FooterClass()
            ],
          ),
        ),
        tablet: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    //constraints: BoxConstraints(maxWidth: 1532.0),
                    child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
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
                                                        "test",
                                                        width: 45,
                                                        height: 20,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Text(
                                                          "test",
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
                                                child: Image.asset(
                                                  "assets/profile_abdikani.png",
                                                  height: 285,
                                                  width: 260,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width *
                                                  0.37,
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
                                                                  "JOINED                                       :",
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
                                                                  "test",
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
                                                                  "GAMES PLAYED                       :",
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
                                                                  "test",
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
                                                                  "POSITION PLAYED                  :",
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
                                                                  "test",
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
                                                                  "GOALS SCORED                       :",
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
                                                                  "test",
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
                                                                  "BOOKING                                   :",
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
                                                                  "test",
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
                                                                  "PASS ACCURENCY                    :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 10, left: 2),
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0),
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
                                                                  "DRIBBLE:                                      :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 5.0, left: 2),
                                                                child: Expanded(
                                                                  child: Text(
                                                                    "test",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize: 10.0),
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
                                                                  "SPEED                                           :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 5.0, left: 2),
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0),
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
                                                                  "BALL CONTROL                          :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 5.0, left: 2),
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0),
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
                                                                  "SHOOTING POOWER                 :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 5.0, left: 2),
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0),
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
                                                                  "TEAM WORK                                :",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
                                                                      fontSize: 10.0,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                const EdgeInsets
                                                                    .only(top: 5.0, left: 2),
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color:
                                                                      Colors.white,
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
                                                    fontSize: 11.0,
                                                    color: Colors.black),
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
                                                              left: 2.0, top: 5.0),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Expanded(
                                                            child: Text(
                                                              "test",
                                                              style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 11),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: 11,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 3.0,),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
                                                          child: Text(
                                                            "test",
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
                                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                                          child: Card(
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  color: AppColors.PurpleColor,
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    child: Text(
                                                      "PREVIOUS CLUB",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                          FontWeight.bold),
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
                                                Container(
                                                  width: double.infinity,
                                                  child: Padding(
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
                                                              child: Text(
                                                                "2023",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                              child: Text("2024",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                              child: Text("SAUS FC ACADEMY",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                              child: Text("SAUS FC ACADEMY",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                            ),
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
                                          height: 25,
                                        ),
                                        Text("")
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ),
                                    Expanded(
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ), 
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ),
                                    Expanded(
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ),
                                    Expanded(
                                      child: Container(
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
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0),
                                                          child: Text("70.00",
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
                                                            child: Text("test"),
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
                                                    child: Text("-> test",
                                                        style: TextStyle(
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
                                                    child: Text("70.00",
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
                                    ),
                                  ],
                                ),

                              ],
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
                                    horizontal: size.width * 0.07),
                                child: GridView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 380,
                                    mainAxisSpacing: 15,
                                    crossAxisSpacing: 3,
                                  ),
                                  itemBuilder: (context, index) {
                                    //var image = images[index];
                                    return FadeInUpBig(
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
                                              margin: EdgeInsets.only(left: 8, right: 8),
                                              decoration: BoxDecoration(
                                                //borderRadius: BorderRadius.circular(30),
                                                image: DecorationImage(
                                                    image: AssetImage("assets/persImage.jpeg"),
                                                    fit: BoxFit.fill),
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
                  FooterClass()
                ],
            ),
        ),
        betweenDesktopTablet: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                constraints: BoxConstraints(maxWidth: 1532.0),
                child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
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
                                                      "test",
                                                      width: 45,
                                                      height: 20,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "test",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
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
                                              child: Image.asset(
                                                "assets/profile_abdikani.png",
                                                height: 285,
                                                width: 260,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width *
                                                0.22,
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
                                                                "JOINED                                       :",
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
                                                                "test",
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
                                                                "GAMES PLAYED                       :",
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
                                                                "test",
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
                                                                "POSITION PLAYED                  :",
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
                                                                "test",
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
                                                                "GOALS SCORED                       :",
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
                                                                "test",
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
                                                                "BOOKING                                   :",
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
                                                                "test",
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
                                                                "PASS ACCURENCY                    :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 10, left: 2),
                                                              child: Text(
                                                                "test",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0),
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
                                                                "DRIBBLE:                                      :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                              child: Expanded(
                                                                child: Text(
                                                                  "test",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: 10.0),
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
                                                                "SPEED                                           :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                              child: Text(
                                                                "test",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0),
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
                                                                "BALL CONTROL                          :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                              child: Text(
                                                                "test",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0),
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
                                                                "SHOOTING POOWER                 :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                              child: Text(
                                                                "test",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0),
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
                                                                "TEAM WORK                                :",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
                                                                    fontSize: 10.0,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                              child: Text(
                                                                "test",
                                                                style: TextStyle(
                                                                    color:
                                                                    Colors.white,
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
                                                  fontSize: 11.0,
                                                  color: Colors.black),
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
                                                            left: 2.0, top: 5.0),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 11,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0,),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0,),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Expanded(
                                                          child: Text(
                                                            "test",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 11),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0, ),
                                                        child: Text(
                                                          "test",
                                                          style: TextStyle(
                                                            color: Colors.blue,
                                                            fontSize: 11,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3.0,),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.min,
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
                                                          left: 2.0,),
                                                        child: Text(
                                                          "test",
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
                                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                                        child: Card(
                                          child: Column(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                color: AppColors.PurpleColor,
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "PREVIOUS CLUB",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                        FontWeight.bold),
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
                                              Container(
                                                width: double.infinity,
                                                child: Padding(
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
                                                            child: Text(
                                                              "2023",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                            child: Text("2024",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black)),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                            child: Text("SAUS FC ACADEMY",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black)),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                            child: Text("SAUS FC ACADEMY",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black)),
                                                          ),
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
                                        height: 25,
                                      ),
                                      Text("")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //if (!Responsive.isMobile(context)) SizedBox(width: 20),
                        // Sidebar
                        //if (!Responsive.isMobile(context))
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            //Search(),
                            Container(
                              height: 30,
                              padding: EdgeInsets.only(left: 10.0, right: 10.0), 
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
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
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
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("70.00",
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
                                                  child: Text("test"),
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
                                          child: Text("-> test",
                                              style: TextStyle(
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
                                          child: Text("70.00",
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
                            SizedBox(
                              width: 15.0,
                            ),
                          ],
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
                      horizontal: size.width * 0.07),
                  child: GridView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 380,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 3,
                    ),
                    itemBuilder: (context, index) {
                      //var image = images[index];
                      return FadeInUpBig(
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
                                margin: EdgeInsets.only(left: 8, right: 8),
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage("assets/persImage.jpeg"),
                                      fit: BoxFit.fill),
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
              FooterClass()
            ],
          ),
        ),
        desktop: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                constraints: BoxConstraints(maxWidth: 1532.0),
                child: SafeArea(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
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
                                          child: Image.asset(
                                            "${widget.playerProfileModel.profileImage}",
                                            height: 285,
                                            width: 260,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.2,
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
                                                child: Text("${widget.playerProfileModel.club}"),
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
                                                            "JOINED                                       :",
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
                                                            "GAMES PLAYED                       :",
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
                                                            "POSITION PLAYED                  :",
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
                                                            "GOALS SCORED                       :",
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
                                                            "BOOKING                                   :",
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
                                                            "PASS ACCURENCY                    :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 10, left: 2),
                                                          child: Text(
                                                            "${widget.playerProfileModel.passAccurency}",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0),
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
                                                            "DRIBBLE:                                      :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                          child: Expanded(
                                                            child: Text(
                                                              "${widget.playerProfileModel.dribble}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10.0),
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
                                                            "SPEED                                           :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                          child: Text(
                                                            "${widget.playerProfileModel.speed}",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0),
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
                                                            "BALL CONTROL                          :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                          child: Text(
                                                            "${widget.playerProfileModel.ballControl}",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0),
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
                                                            "SHOOTING POOWER                 :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                          child: Text(
                                                            "${widget.playerProfileModel.shootingPower}",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0),
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
                                                            "TEAM WORK                                :",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
                                                                fontSize: 10.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5.0, left: 2),
                                                          child: Text(
                                                            "${widget.playerProfileModel.teamWork}",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.white,
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
                                              fontSize: 11.0,
                                              color: Colors.black),
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
                                                            left: 2.0, top: 5.0),
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
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.dateOfBirth}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.nationality}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.state}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
                                                    child: Text(
                                                      "${widget.playerProfileModel.position}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
                                                    child: Text(
                                                      "${widget.playerProfileModel.height}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.weight}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.preferredFoot}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
                                                    child: Text(
                                                      "${widget.playerProfileModel.alternativePosition}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
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
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0, ),
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
                                              SizedBox(height: 3.0,),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
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
                                                            left: 2.0,),
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

                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Container(
                                              width: double.infinity,
                                            color: AppColors.PurpleColor,
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Text(
                                                "PREVIOUS CLUB",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                    FontWeight.bold),
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
                                          Container(
                                            width: double.infinity,
                                            child: Padding(
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
                                                        child: Text(
                                                          "2023",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .all(8.0),
                                                        child: Text("2024",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .all(8.0),
                                                        child: Text("SAUS FC ACADEMY",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .all(8.0),
                                                        child: Text("SAUS FC ACADEMY",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black)),
                                                      ),
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
                                    height: 25,
                                  ),
                                  Text("")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //if (!Responsive.isMobile(context)) SizedBox(width: 20),
                    // Sidebar
                    //if (!Responsive.isMobile(context))
                      Expanded(
                        child: Column(
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
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 8, bottom: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("${widget.playerProfileModel.metricCoordination}",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("${widget.playerProfileModel.coordScore}",
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
                                              child: Text("${widget.playerProfileModel.coordCoachNote}"),
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
                                          child: Text("-> ${widget.playerProfileModel.coordCoachName}",
                                              style: TextStyle(
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
                                          child: Text("${widget.playerProfileModel.coordScore}",
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
                                SizedBox(
                                  width: 8.0,
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
                                              Text("${widget.playerProfileModel.metricAgility}",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Text("${widget.playerProfileModel.agilityScore}",
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
                                              child: Text("${widget.playerProfileModel.agilityCoachNote}"),
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
                                          child: Text("-> ${widget.playerProfileModel.agilityCoachName}",
                                              style: TextStyle(
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
                                          child: Text("${widget.playerProfileModel.agilityScore}",
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
                            //Categories(),
                            SizedBox(height: 20),
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
                                                  Text("${widget.playerProfileModel.metricEndurance}",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 8.0),
                                                    child: Text("${widget.playerProfileModel.endurScore}",
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
                                                      child: Text("${widget.playerProfileModel.endurCoachNote}"),
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
                                              child: Text("-> ${widget.playerProfileModel.endurCoachName}",
                                                  style: TextStyle(
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
                                              child: Text("${widget.playerProfileModel.endurScore}",
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
                                SizedBox(
                                  width: 8.0,
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
                                                  Text("${widget.playerProfileModel.metricPower}",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 8.0),
                                                    child: Text("${widget.playerProfileModel.powerScore}",
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
                                                      child: Text("${widget.playerProfileModel.powerCoachNote}"),
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
                                              child: Text("-> ${widget.playerProfileModel.powerCoachName}",
                                                  style: TextStyle(
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
                                              child: Text("${widget.playerProfileModel.powerScore}",
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
                            SizedBox(height: 20),
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
                                                  Text("Coordination",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 8.0),
                                                    child: Text("70.00",
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
                                                      child: Text("test"),
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
                                              child: Text("-> test",
                                                  style: TextStyle(
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
                                              child: Text("70.00",
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
                                SizedBox(
                                  width: 8.0,
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
                                                  Text("Coordination",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 8.0),
                                                    child: Text("70.00",
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
                                                      child: Text("test"),
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
                                              child: Text("-> test",
                                                  style: TextStyle(
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
                                              child: Text("70.00",
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
                      horizontal: size.width * 0.07),
                  child: GridView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: 380,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 3,
                    ),
                    itemBuilder: (context, index) {
                      //var image = images[index];
                      return FadeInUpBig(
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
                                margin: EdgeInsets.only(left: 8, right: 8),
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage("assets/persImage.jpeg"),
                                      fit: BoxFit.fill),
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
              FooterClass()
            ],
          ),
        ),
      ),
    );
  }
}
