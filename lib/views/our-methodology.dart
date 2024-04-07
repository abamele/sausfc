import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/helpers/single-helper.dart';

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
          child: Image.asset("assets/sausfc_logo.png", width: 55, height: 55),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(""),
                SizedBox(height: 20,),
                Center(
                  child: Text(
                    "OUR METHODOLOGY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height * 0.4,
                  child: Image.asset("assets/ball_mastery.jpeg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "BALL MASTERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 14, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Ball Mastery enables our players to develop'
                        'a healthy, confident relationship with the ball.'
                        'Players will focus on using different parts of'
                        'their feet and executing different turns,'
                        'forward moves and side moves.',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: size.height * 0.4,
                  child: Image.asset("assets/passing.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "PASSING & RECEIVING",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 14, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Passing & Receiving is a key technical'
                        'component of the modern game. We will'
                        'introduce various methods to pass to'
                        'teammates and receive on different angles'
                        'and parts of the foot in an array of game'
                        'realistic situations.',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: size.height * 0.4,
                  child: Image.asset("assets/shooting.png"),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "CREATING & FINISHING",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 14, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                        'Passing & Receiving is a key technical'
                        'component of the modern game. We will'
                        'introduce various methods to pass to'
                        'teammates and receive on different angles'
                        'and parts of the foot in an array of game'
                        'realistic situations.',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                    Container(
                      height: size.height * 0.4,
                      child: Image.asset("assets/twisting.jpeg"),
                    ),
                    Text(
                      "TWISTING & TURNING",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 14, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'The objective of Twisting and Turning is to'
                            'develop the art of "Escape and Evade". Our'
                            'sessions will focus on the mechanics of'
                            'turning and introduce it into realistic game'
                            'situations for players to execute in their games.',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Container(
                      height: size.height * 0.4,
                      child: Image.asset("assets/dribbling.png"),
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      "DRIBBLING & RUNNING WITH THE BALL",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 14, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        'Dribbling & Running with the ball aim to'
                            'develop the art of ‘Survive on the ball’. Our'
                            'sessions will highlight the difference between'
                            'both methods and when to identify what may'
                            'be the best approach.',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Container(
                      height: size.height * 0.4,
                      child: Image.asset("assets/smiling.png"),
                    ),
                    Text(
                      "SMALL SIDED GAMES",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 14, color: Colors.white),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Text(
                          'Small sided games have enormous'
                              'advantages for the development of young'
                              'footballers. Increased ball handling time,'
                              'quick decision-making scenarios and perfect'
                              'setting to improve creativity and confidence.',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Text("")
                  ],
                )),
            FooterClass()
          ],
        ),
        tablet: ListView(
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: size.height * 0.4,
                          width: size.width * 0.2,
                          child: Image.asset("assets/ball_mastery.jpeg"),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(
                          height: size.height * 0.4,
                          width: size.width * 0.2,
                          child: Image.asset("assets/passing.png"),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(
                          height: size.height * 0.4,
                          width: size.width * 0.2,
                          child: Image.asset("assets/shooting.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "BALL MASTERY",
                              style: AppTextStyles.montserratStyle(
                                  fontSize: 28, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Ball Mastery enables our players to develop'
                                  'a healthy, confident relationship with the ball.'
                                  'Players will focus on using different parts of'
                                  'their feet and executing different turns,'
                                  'forward moves and side moves.',
                              style: AppTextStyles.normalStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "PASSING & RECEIVING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Passing & Receiving is a key technical'
                                  'component of the modern game. We will'
                                  'introduce various methods to pass to'
                                  'teammates and receive on different angles'
                                  'and parts of the foot in an array of game'
                                  'realistic situations.',
                              style: AppTextStyles.normalStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "CREATING & FINISHING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10),
                              child: Text(
                                'Passing & Receiving is a key technical'
                                    'component of the modern game. We will'
                                    'introduce various methods to pass to'
                                    'teammates and receive on different angles'
                                    'and parts of the foot in an array of game'
                                    'realistic situations.',
                                style: AppTextStyles.normalStyle(color: Colors.white),
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/twisting.jpeg"),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/dribbling.png"),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/smiling.png"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "TWISTING & TURNING",
                                  style: AppTextStyles.montserratStyle(
                                      fontSize: 28, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'The objective of Twisting and Turning is to'
                                      'develop the art of "Escape and Evade". Our'
                                      'sessions will focus on the mechanics of'
                                      'turning and introduce it into realistic game'
                                      'situations for players to execute in their games.',
                                  style: AppTextStyles.normalStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "DRIBBLING & RUNNING WITH THE BALL",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Dribbling & Running with the ball aim to'
                                      'develop the art of ‘Survive on the ball’. Our'
                                      'sessions will highlight the difference between'
                                      'both methods and when to identify what may'
                                      'be the best approach.',
                                  style: AppTextStyles.normalStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "SMALL SIDED GAMES",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                                  child: Text(
                                    'Small sided games have enormous'
                                        'advantages for the development of young'
                                        'footballers. Increased ball handling time,'
                                        'quick decision-making scenarios and perfect'
                                        'setting to improve creativity and confidence.',
                                    style: AppTextStyles.normalStyle(color: Colors.white),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Text("")
                  ],
                )),
            FooterClass()
          ],
        ),
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
                    Expanded(
                      child: Container(
                        height: size.height * 0.4,
                        width: size.width * 0.2,
                        child: Image.asset("assets/ball_mastery.jpeg"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * 0.4,
                        width: size.width * 0.2,
                        child: Image.asset("assets/passing.png"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * 0.4,
                        width: size.width * 0.2,
                        child: Image.asset("assets/shooting.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "BALL MASTERY",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Text(
                              'Ball Mastery enables our players to develop'
                                  'a healthy, confident relationship with the ball.'
                                  'Players will focus on using different parts of'
                                  'their feet and executing different turns,'
                                  'forward moves and side moves.',
                              style: AppTextStyles.normalStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "PASSING & RECEIVING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Text(
                              'Passing & Receiving is a key technical'
                                  'component of the modern game. We will'
                                  'introduce various methods to pass to'
                                  'teammates and receive on different angles'
                                  'and parts of the foot in an array of game'
                                  'realistic situations.',
                              style: AppTextStyles.normalStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "CREATING & FINISHING",
                            style: AppTextStyles.montserratStyle(
                                fontSize: 28, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0, right: 20),
                            child: Text(
                              'Passing & Receiving is a key technical'
                                  'component of the modern game. We will'
                                  'introduce various methods to pass to'
                                  'teammates and receive on different angles'
                                  'and parts of the foot in an array of game'
                                  'realistic situations.',
                              style: AppTextStyles.normalStyle(color: Colors.white),
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/twisting.jpeg"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/dribbling.png"),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: size.height * 0.4,
                            width: size.width * 0.2,
                            child: Image.asset("assets/smiling.png"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "TWISTING & TURNING",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70.0),
                                child: Text(
                                  'The objective of Twisting and Turning is to'
                                      'develop the art of "Escape and Evade". Our'
                                      'sessions will focus on the mechanics of'
                                      'turning and introduce it into realistic game'
                                      'situations for players to execute in their games.',
                                  style: AppTextStyles.normalStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "DRIBBLING & RUNNING\n WITH THE BALL",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Text(
                                  'Dribbling & Running with the ball aim to'
                                      'develop the art of ‘Survive on the ball’. Our'
                                      'sessions will highlight the difference between'
                                      'both methods and when to identify what may'
                                      'be the best approach.',
                                  style: AppTextStyles.normalStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "SMALL SIDED GAMES",
                                style: AppTextStyles.montserratStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 70.0, right: 20),
                                  child: Text(
                                    'Small sided games have enormous'
                                        'advantages for the development of young'
                                        'footballers. Increased ball handling time,'
                                        'quick decision-making scenarios and perfect'
                                        'setting to improve creativity and confidence.',
                                    style: AppTextStyles.normalStyle(color: Colors.white),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Text("")
                  ],
                )),
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            FooterClass()
          ],
        ),
      ),
    );
  }
}
