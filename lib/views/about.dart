import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals/app-button.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
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
                      fontSize: 30.0, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
          buildProfilePicture(context),
          SizedBox(height: 20,),
          buildAboutMeContents(),
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
          buildProfilePicture(context),
          Constants.sizedBox(width: 25.0),
          buildAboutMeContents(),
        ],
      ),
      desktop: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(""),
          Constants.sizedBox(height: 55.0),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildProfilePicture(context),
              Constants.sizedBox(width: 25.0),
              Expanded(child: buildAboutMeContents())
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture(context) {
    final Size size = MediaQuery.of(context).size;
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        "assets/team 2021.jpeg",
        height: 450,
        width: size.width * 0.3,
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
              Text(
                'Welcome to the Sakarya University Spor Football Club Academy (SAUS FC), the football academy that allows you to train as a full time professional footballer.'
                ' Our based football academy encourages development in football skills, while understanding the need for continued education.'
                ' We run a variety of football training and study programmes, where football players can gain internationally recognised qualifications.'
                ' Our moto, “move forward together,” ensures that each individual who enters the academy develops and improves both on and off the pitch.'
                ' Whether this development is into professional football in Turkey, internationally, employment or further education.'
                ' The academy was founded in 2017 by Aba Mele. Since then, we have welcomed players from over 52 different countries,'
                ' all coming to take advantage of the facilities and passion for football that we have to offer.\n\n'
                'SAUS Fc is a family and we look forward to welcoming you.',
                style: AppTextStyles.normalStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        Constants.sizedBox(height: 30.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Subscribe'),
        )
      ],
    );
  }
}
