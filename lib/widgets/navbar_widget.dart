import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/views/about.dart';
import 'package:saus_fc/views/our-methodology.dart';
import 'package:saus_fc/views/partner.dart';
import 'package:saus_fc/views/terms-and-conditions.dart';
import '../views/dashboard.dart';
import '../views/location.dart';
import '../views/support-staff.dart';

class NavberWidget extends StatefulWidget {
  NavberWidget({Key? key}) : super(key: key);

  @override
  State<NavberWidget> createState() => _NavberWidgetState();
}

class _NavberWidgetState extends State<NavberWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6, // Full width
      child: Drawer(
        backgroundColor: AppColors.bgColor2.withOpacity(0.7),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ))),
            SizedBox(
              height: 70,
            ),
            /*Image.asset(
              "assets/logoweb.png",
              height: 100,
              width: 100,
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'ABOUT THE ACADEMY',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutMe()));
                },
              ),
            ),
            /* Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            Icon(IconlyLight.search),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Search', style: TextStyle(fontSize: 22),
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/search");
                        },
                      ),
                    ),*/
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'ACADEMY LIFE',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      // style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onTap: () {
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainDashBoard()));*/
                },
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'OUR METHODOLOGY',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OurMethodology()));
                },
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'TOURNAMENTS',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      // style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'SUPPORT STAFF',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SupportStaff()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'PARTNERS',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Partners()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'LOCATION',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                },
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      'ONLINE SHOP',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      // style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                onTap: () {

                },
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Expanded(
                      child: Text(
                        'TERMS AND CONDITIONS',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TermsAndConditions()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
