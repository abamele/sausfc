import 'package:flutter/material.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/views/footer.dart';
import 'package:saus_fc/views/single-helper.dart';

import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';

class SupportStaff extends StatefulWidget {
  const SupportStaff({super.key});

  @override
  State<SupportStaff> createState() => _SupportStaffState();
}

class _SupportStaffState extends State<SupportStaff> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0.0,
        toolbarHeight: 90,
        title:  MaterialButton(
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
        ),
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
                  left: 110, right: 110, top: 8.0,),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "SUPERVISION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 46),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2,
                      child: Image.asset(
                        "assets/staff.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 30.0),
                    Text(
                      'The teaching staff of the Academy is in\n'
                      'permanent contact with students in the\n'
                      'field and outside, available 24 hours a\n'
                      'day, 7 days a week .',
                      style: TextStyle(
                          fontSize: 34.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "More than twenty-five people, all qualified in their field, serve the students of the Academy.",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Constants.sizedBox(height: 25.0),
                    Text(
                      "DIRECTION",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 46),
                    ),
                    Constants.sizedBox(height: 15.0),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            "Training Centre Director: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "ABA MELE",
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            "School Manager: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            "Legal Officer: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 25.0),
                    Text(
                      "TECHNICAL STAFF",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 46),
                    ),
                    Constants.sizedBox(height: 15.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            "Group coach: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "ABA MELE",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0),
                          child: Text(
                            "Physical trainers: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "FATIH ",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0, left: 80),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Goalkeepers Coach: ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, bottom: 30),
                            child: Text(
                              "FATIH, ABA MELE",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
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
