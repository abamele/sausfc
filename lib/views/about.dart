import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:saus_fc/views/footer.dart';

import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/abou-helper.dart';
import '../widgets/navbar_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

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
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutHelper(
              mobile: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '',
                      style: AppTextStyles.headingStyles(fontSize: 30.0),
                      children: [
                        TextSpan(
                          text: 'About',
                          style: AppTextStyles.headingStyles(
                              fontSize: 20.0, color: AppColors.robinEdgeBlue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeInRight(
                    duration: const Duration(milliseconds: 1200),
                    child: Image.asset(
                      "assets/Team.jpeg",
                      height: size.height * 0.34,
                      width: size.width * 0.8,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /*FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                      text: 'More about ',
                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Footbal Player Profile',
                          style: TextStyle(
                              fontSize: 30, color: AppColors.robinEdgeBlue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),*/
                      //Constants.sizedBox(height: 6.0),
                      /*FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'Flutter Developer!',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),*/
                      //Constants.sizedBox(height: 8.0),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1600),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: AppTextStyles.headingStyles(
                                      fontSize: 30.0),
                                  children: [
                                    TextSpan(
                                      text: 'ABOUT US',
                                      style: AppTextStyles.headingStyles(
                                          fontSize: 20.0,
                                          color: AppColors.robinEdgeBlue),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Constants.sizedBox(height: 25.0),
                            Text(
                              'Welcome to the Sakarya University Spor Football Club Academy (SAUS FC), the football academy that allows you to train as a full time professional footballer.'
                              ' Our based football academy encourages development in football skills, while understanding the need for continued education.'
                              ' We run a variety of football training and study programmes, where football players can gain internationally recognised qualifications.'
                              ' Our moto, “move forward together,” ensures that each individual who enters the academy develops and improves both on and off the pitch.'
                              ' Whether this development is into professional football in Turkey, internationally, employment or further education.'
                              ' The academy was founded in 2017 by Aba Mele. Since then, we have welcomed players from over 52 different countries,'
                              ' all coming to take advantage of the facilities and passion for football that we have to offer.\n\n'
                              'SAUS Fc is a family and we look forward to welcoming you.',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Constants.sizedBox(height: 50.0),
                      Text("")
                      /*FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: AppButtons.buildMaterialButton(
                      onTap: () {}, buttonName: 'Subscribe'),
                )*/
                    ],
                  )
                ],
              ),
              tablet: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '',
                      style: AppTextStyles.headingStyles(fontSize: 30.0),
                      children: [
                        TextSpan(
                          text: 'About',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30.0, color: AppColors.robinEdgeBlue),
                        )
                      ],
                    ),
                  ),
                  Constants.sizedBox(height: 25.0),
                  FadeInRight(
                    duration: const Duration(milliseconds: 1200),
                    child: Image.asset(
                      "assets/Team.jpeg",
                      height: size.height * 0.5,
                      width: size.width * 0.8,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Constants.sizedBox(height: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /*FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                      text: 'More about ',
                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Footbal Player Profile',
                          style: TextStyle(
                              fontSize: 30, color: AppColors.robinEdgeBlue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),*/
                      //Constants.sizedBox(height: 6.0),
                      /*FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text(
                    'Flutter Developer!',
                    style: AppTextStyles.montserratStyle(color: Colors.white),
                  ),
                ),*/
                      //Constants.sizedBox(height: 8.0),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1600),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: '',
                                  style: AppTextStyles.headingStyles(
                                      fontSize: 30.0),
                                  children: [
                                    TextSpan(
                                      text: 'ABOUT US',
                                      style: AppTextStyles.headingStyles(
                                          fontSize: 30.0,
                                          color: AppColors.robinEdgeBlue),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Constants.sizedBox(height: 25.0),
                            Text(
                              'Welcome to the Sakarya University Spor Football Club Academy (SAUS FC), the football academy that allows you to train as a full time professional footballer.'
                              ' Our based football academy encourages development in football skills, while understanding the need for continued education.'
                              ' We run a variety of football training and study programmes, where football players can gain internationally recognised qualifications.'
                              ' Our moto, “move forward together,” ensures that each individual who enters the academy develops and improves both on and off the pitch.'
                              ' Whether this development is into professional football in Turkey, internationally, employment or further education.'
                              ' The academy was founded in 2017 by Aba Mele. Since then, we have welcomed players from over 52 different countries,'
                              ' all coming to take advantage of the facilities and passion for football that we have to offer.\n\n'
                              'SAUS Fc is a family and we look forward to welcoming you.',
                              style: AppTextStyles.normalStyle(
                                  color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Constants.sizedBox(height: 50.0),
                      Text("")
                      /*FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: AppButtons.buildMaterialButton(
                      onTap: () {}, buttonName: 'Subscribe'),
                )*/
                    ],
                  ),
                ],
              ),
              desktop: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(""),
                  Constants.sizedBox(height: 55.0),
                  /*RichText(
                    text: TextSpan(
                      text: '',
                      style: AppTextStyles.headingStyles(fontSize: 30.0),
                      children: [
                        TextSpan(
                          text: 'ABOUT US',
                          style: AppTextStyles.headingStyles(
                              fontSize: 30.0, color: AppColors.robinEdgeBlue),
                        )
                      ],
                    ),
                  ),*/
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildProfilePicture(context),
                      Constants.sizedBox(width: 25.0),
                      Expanded(child: buildAboutMeContents())
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  Text(""),
                ],
              ),
              paddingWidth: size.width * 0.04,
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
      ),
    );
  }

  FadeInRight buildProfilePicture(context) {
    final Size size = MediaQuery.of(context).size;
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        "assets/Team.jpeg",
        height: size.height * 0.5,
        width: size.width * 0.45,
        fit: BoxFit.fill,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /*FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'More about ',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
              children: [
                TextSpan(
                  text: 'Footbal Player Profile',
                  style: TextStyle(
                      fontSize: 30, color: AppColors.robinEdgeBlue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),*/
        //Constants.sizedBox(height: 6.0),
        /*FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),*/
        //Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: '',
                  style: AppTextStyles.headingStyles(fontSize: 30.0),
                  children: [
                    TextSpan(
                      text: 'ABOUT US',
                      style: AppTextStyles.headingStyles(
                          fontSize: 30.0, color: AppColors.robinEdgeBlue),
                    )
                  ],
                ),
              ),
              Constants.sizedBox(height: 25.0),
              Text(
                'Welcome to the Sakarya University Spor Football Club Academy (SAUS FC), the football academy that allows you to train as a full time professional footballer.'
                ' Our based football academy encourages development in football skills, while understanding the need for continued education.'
                ' We run a variety of football training and study programmes, where football players can gain internationally recognised qualifications.'
                ' Our moto, “move forward together,” ensures that each individual who enters the academy develops and improves both on and off the pitch.'
                ' Whether this development is into professional football in Turkey, internationally, employment or further education.'
                ' The academy was founded in 2017 by Aba Mele. Since then, we have welcomed players from over 52 different countries,'
                ' all coming to take advantage of the facilities and passion for football that we have to offer.\n\n'
                'SAUS Fc is a family and we look forward to welcoming you.',
                style: AppTextStyles.normalStyle(
                    color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        Constants.sizedBox(height: 50.0),
        Text("")
        /*FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Subscribe'),
        )*/
      ],
    );
  }
}
