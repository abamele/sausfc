import 'package:flutter/material.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/views/footer.dart';
import 'package:saus_fc/views/single-helper.dart';

import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';

class Partners extends StatefulWidget {
  const Partners({super.key});

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
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
                left: 110,
                right: 110,
                top: 8.0,
              ),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "PARTNERS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 46),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2.5,
                      child: Image.asset(
                        "assets/stadium.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          "assets/barikalogo.jpg",
                          height: 250,
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                "BARIKA DRINKS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 46),
                              ),
                            ),
                            Text(
                              'Based on the principle of education, \nsport and entertainment, \n'
                              'we provide varieties of BARIKA gifts \nsuch as t-shirts, caps, pens, \n'
                              'bags and flags to facilitate \nour customers/partners in promoting the brand.\n'
                              'For our loyal customers we offer \nseveral flavors of BARIKA \n'
                              'such as Barika black 13bx and 5bs, \nBarika white in sugar, \n'
                              'Barika tropical mango (blue and green) \nand also Barika 4G \n'
                              'which is the basic blend of grape, ginger, \nguarana and grapefruit. \n',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Constants.sizedBox(height: 20.0),
                            InkWell(
                              child: Row(
                                children: [
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: AppColors.redColor),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.redColor,
                                  )
                                ],
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          "assets/barikalogo.jpg",
                          height: 250,
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                "BETON",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 46),
                              ),
                            ),
                            Text(
                              'Based on the principle of education, \nsport and entertainment, \n'
                              'we provide varieties of BARIKA gifts \nsuch as t-shirts, caps, pens, \n'
                              'bags and flags to facilitate \nour customers/partners in promoting the brand.\n'
                              'For our loyal customers we offer \nseveral flavors of BARIKA \n'
                              'such as Barika black 13bx and 5bs, \nBarika white in sugar, \n'
                              'Barika tropical mango (blue and green) \nand also Barika 4G \n'
                              'which is the basic blend of grape, ginger, \nguarana and grapefruit. \n',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Constants.sizedBox(height: 20.0),
                            InkWell(
                              child: Row(
                                children: [
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: AppColors.redColor),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: AppColors.redColor,
                                  )
                                ],
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          "assets/barikalogo.jpg",
                          height: 250,
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                "MAVERCIK TEAM \nATHLETIC PERFORMANCE CO.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 46),
                              ),
                            ),
                            Text(
                              'Based on the principle of education, \nsport and entertainment, \n'
                              'we provide varieties of BARIKA gifts \nsuch as t-shirts, caps, pens, \n'
                              'bags and flags to facilitate \nour customers/partners in promoting the brand.\n'
                              'For our loyal customers we offer \nseveral flavors of BARIKA \n'
                              'such as Barika black 13bx and 5bs, \nBarika white in sugar, \n'
                              'Barika tropical mango (blue and green) \nand also Barika 4G \n'
                              'which is the basic blend of grape, ginger, \nguarana and grapefruit. \n',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Constants.sizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
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
