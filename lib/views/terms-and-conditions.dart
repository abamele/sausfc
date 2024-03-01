import 'package:flutter/material.dart';

import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';
import 'footer.dart';
import 'single-helper.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
        /*MaterialButton(
          color: AppColors.themeColor,
          splashColor: AppColors.lawGreen,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          hoverColor: AppColors.aqua,
          elevation: 10,
          height: 55,
          minWidth: 130,
          focusElevation: 12,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
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
      ),
      drawer: NavberWidget(),
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: Container(),
        tablet: Container(),
        desktop: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 110,
                right: 110,
                top: 8.0,
              ),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Text(
                          "SAUS FC TERMES AND CONDITIONS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 46),
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '1) These terms and conditions cover all courses and provisions offered by SAUS FC Academy.\n'
                        '2) They cover all individuals which are enrolled, or attend, any provision within the academy.\n'
                        '3) A player’s enrollment, attendance, participation and/or payment will serve as agreement to these terms. ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Key words:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    Constants.sizedBox(height: 2.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '1) Players- Term used to refer to all individuals participating within SAUS FC activities, regardless of the specific programme enrolled onto.\n'
                        '2) Session- Any timetabled (in writing or verbally arranged) activity which is organised and/ or conducted through SAUS FC.\n'
                        '3) Programme- This prefers all the differing length of courses which SAUS FC facilitates and an individual has enrolled onto, including taster days',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "General",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    Constants.sizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '1) All players must arrive at the academy on time and be ready to start all sessions at the time stated on the timetable.\n'
                        '2) All players must sign with the office staff, immediately upon entering the SAUS FC facilities. Players who fail to sign in will miss training for that day.\n'
                        '3) Players must greet staff on arrival and at the start of sessions.\n'
                        '4) Players are expected to attend 80% of the training schedule.\n'
                        '5) Should any circumstances change it is the student’s responsibility to keep SAUS FC informed of all changes, in particular of any changes of home address, emergency contact name/ numbers or of any medical information.\n'
                        '6) Player’s understand that SAUS FC is a football academy and even though we offer transfers, this is not our sole business and these cannot be made at short notice.\n'
                        '7) If a player takes a day off or does not participate within provision, this is their discretion.\n'
                        '8) The academy has a zero tolerance to drugs and alcohol. Any players found, or deemed to be under the influence or in possession, throughout their course, will be asked to leave.\n'
                        '9) Our motto is ‘moving forwards together’ and we believe all players have the ability to progress. If MIFA Directors believe that a player is not progressing, due to poor attendance and/or attitude and/or in hindering other participants progress- they have the right to ask them to leave the programme immediately.\n'
                        '10) SAUS FC accepts all players.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Football",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '1) Team selections for matches will be made on merit and at the discretion of the Manager and Coaching staff.\n'
                        '2) All players must wear shin pads for training and games. It is the players responsibility to ensure shin pads are worn. If the player does not wear shin pads, this is at their own discretion and they understand the risks involved.\n'
                        '3) Where possible, training sessions and matches may be filmed for analysis purposes. However, we cannot guarantee copies of these clips throughout a player`s time at the academy.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Behaviour",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '1) All players who partake within SAUS FC’s activities are accountable for their behaviour and conduct. Any abuse, physical or verbal, against members of the public, staff or other players will be treated with zero tolerance and will result in the immediate removal from the academy.\n'
                        '2) All players must follow the Code of Conduct displayed within the MIFA facilities.',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            FooterClass()
          ],
        ),
      ),
    );
  }
}
