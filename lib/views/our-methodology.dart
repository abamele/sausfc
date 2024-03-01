import 'package:flutter/material.dart';
import 'package:saus_fc/views/dashboard.dart';
import 'package:saus_fc/views/home-page.dart';
import 'package:saus_fc/views/single-helper.dart';

import '../globals/app-color.dart';
import '../globals/app-styles.dart';
import '../widgets/navbar_widget.dart';
import 'footer.dart';

class OurMethodology extends StatefulWidget {
  const OurMethodology({super.key});

  @override
  State<OurMethodology> createState() => _OurMethodologyState();
}

class _OurMethodologyState extends State<OurMethodology> {
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
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: Container(),
        tablet: Container(),
        desktop: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "OUR METHODOLOGY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: MaterialButton(
                        color: AppColors.themeColor,
                        splashColor: AppColors.lawGreen,
                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hoverColor: AppColors.aqua,
                        elevation: 10,
                        height: 60,
                        minWidth: 90,
                        focusElevation: 12,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "HOME",
                              style: AppTextStyles.headerTextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MainDashBoard()));
                        },
                      ),
                    ),*/

                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/maillot.jpeg"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "BALL MASTERY",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            'Ball Mastery enables our players to develop\n'
                                'a healthy, confident relationship with the ball.\n'
                                'Players will focus on using different parts of\n'
                                'their feet and executing different turns,\n'
                                'forward moves and side moves.',
                            style: AppTextStyles.normalStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/maillot.jpeg"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "PASSING & RECEIVING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            'Passing & Receiving is a key technical\n'
                                'component of the modern game. We will\n'
                                'introduce various methods to pass to\n'
                                'teammates and receive on different angles\n'
                                'and parts of the foot in an array of game\n'
                                'realistic situations.',
                            style: AppTextStyles.normalStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/maillot.jpeg"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "CREATING & FINISHING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            'Passing & Receiving is a key technical\n'
                                'component of the modern game. We will\n'
                                'introduce various methods to pass to\n'
                                'teammates and receive on different angles\n'
                                'and parts of the foot in an array of game\n'
                                'realistic situations.',
                            style: AppTextStyles.normalStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BALL MASTERY",
                          style: AppTextStyles.montserratStyle(
                              fontSize: 28, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Ball Mastery enables our players to develop\n'
                          'a healthy, confident relationship with the ball.\n'
                          'Players will focus on using different parts of\n'
                          'their feet and executing different turns,\n'
                          'forward moves and side moves.',
                          style: AppTextStyles.normalStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      children: [
                        Text(
                          "PASSING & RECEIVING",
                          style: AppTextStyles.montserratStyle(
                              fontSize: 28, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Passing & Receiving is a key technical\n'
                          'component of the modern game. We will\n'
                          'introduce various methods to pass to\n'
                          'teammates and receive on different angles\n'
                          'and parts of the foot in an array of game\n'
                          'realistic situations.',
                          style: AppTextStyles.normalStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Column(
                      children: [
                        Text(
                          "CREATING & FINISHING",
                          style: AppTextStyles.montserratStyle(
                              fontSize: 28, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Creating & Finishing requires players to take\n'
                          'risks, express themselves, and to be brave in\n'
                          'these situations. We will introduce and\n'
                          'encourage our players to adopt this mindset\n'
                          'and how we can score using different methods.',
                          style: AppTextStyles.normalStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),*/
                SizedBox(
                  height: 55,
                ),
                Text("")
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                color: AppColors.bgColor2,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Text(""),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*MaterialButton(
                          color: AppColors.themeColor,
                          splashColor: AppColors.lawGreen,
                          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          hoverColor: AppColors.aqua,
                          elevation: 10,
                          height: 60,
                          minWidth: 90,
                          focusElevation: 12,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.arrow_back),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "HOME",
                                style: AppTextStyles.headerTextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MainDashBoard()));
                          },
                        ),*/
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.4,
                                width: size.width * 0.2,
                                child: Image.asset("assets/maillot.jpeg"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "TWISTING & \nTURNING ",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Text(
                                'The objective of Twisting and Turning is to\n'
                                    'develop the art of "Escape and Evade". Our\n'
                                    'sessions will focus on the mechanics of\n'
                                    'turning and introduce it into realistic game\n'
                                    'situations for players to execute in their games.',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.4,
                                width: size.width * 0.2,
                                child: Image.asset("assets/maillot.jpeg"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "DRIBBLING & RUNNING \nWITH THE BALL",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Text(
                                'Dribbling & Running with the ball aim to\n'
                                    'develop the art of ‘Survive on the ball’. Our\n'
                                    'sessions will highlight the difference between\n'
                                    'both methods and when to identify what may\n'
                                    'be the best approach.',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.4,
                                width: size.width * 0.2,
                                child: Image.asset("assets/maillot.jpeg"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "SMALL SIDED GAMES",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Text(
                                'Small sided games have enormous\n'
                                    'advantages for the development of young\n'
                                    'footballers. Increased ball handling time,\n'
                                    'quick decision-making scenarios and perfect\n'
                                    'setting to improve creativity and confidence.',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TWISTING & \nTURNING ",
                              style: AppTextStyles.montserratStyle(
                                  fontSize: 28, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'The objective of Twisting and Turning is to\n'
                              'develop the art of "Escape and Evade". Our\n'
                              'sessions will focus on the mechanics of\n'
                              'turning and introduce it into realistic game\n'
                              'situations for players to execute in their games.',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Column(
                          children: [
                            Text(
                              "DRIBBLING & RUNNING \nWITH THE BALL",
                              style: AppTextStyles.montserratStyle(
                                  fontSize: 28, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Dribbling & Running with the ball aim to\n'
                              'develop the art of ‘Survive on the ball’. Our\n'
                              'sessions will highlight the difference between\n'
                              'both methods and when to identify what may\n'
                              'be the best approach.',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Column(
                          children: [
                            Text(
                              "SMALL SIDED GAMES",
                              style: AppTextStyles.montserratStyle(
                                  fontSize: 28, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Small sided games have enormous\n'
                              'advantages for the development of young\n'
                              'footballers. Increased ball handling time,\n'
                              'quick decision-making scenarios and perfect\n'
                              'setting to improve creativity and confidence.',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),*/
                    SizedBox(
                      height: 55,
                    ),
                    Text("")
                  ],
                )),
            FooterClass()
          ],
        ),
      ),
    );
  }
}
