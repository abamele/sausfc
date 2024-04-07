import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:saus_fc/providers/service-provider.dart';

import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  bool isApp = false,
      isGraphic = false,
      isDataAnalyst = false,
      isSupportEdit = false;
  bool hover = false;
  double width = 300;
  double hoverWidth = 360;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    ServiceProvider serviceProvider = Provider.of(context);
    serviceProvider.getServiceData();
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: '',
                style: AppTextStyles.headingStyles(fontSize: 20.0),
                children: [
                  TextSpan(
                    text: 'Services',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30.0, color: AppColors.robinEdgeBlue),
                  )
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 40.0),
          RichText(
            text: TextSpan(
              text: 'What offers ',
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Football Player Profile',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: AppColors.robinEdgeBlue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Constants.sizedBox(height: 30.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isApp ? hoverWidth : width,
              height: isApp ? 340 : 330,
              alignment: Alignment.center,
              transform: isApp ? onHoverActive : onHoverRemove,
              padding: const EdgeInsets.symmetric(
                  horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border: isApp
                    ? Border.all(color: AppColors.themeColor, width: 3)
                    : null,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      AppAssets.document,
                      width: 50,
                      height: 50,
                      color: AppColors.themeColor,
                    ),
                    Constants.sizedBox(height: 30.0),
                    Text(
                      'Landing Page',
                      style: AppTextStyles.montserratStyle(
                          color: Colors.white, fontSize: 18.0),
                    ),
                    Constants.sizedBox(height: 12.0),
                    Text(
                      'Presentation page, with all the important, relevant information '
                          'and using multimedia content such as photos and videos.',
                      style: AppTextStyles.normalStyle(fontSize: 11.0),
                      textAlign: TextAlign.center,
                    ),
                    Constants.sizedBox(height: 20.0),
                    //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                  ],
                ),
              ),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isGraphic ? hoverWidth : width,
              height: isGraphic ? 340 : 330,
              alignment: Alignment.center,
              transform: isGraphic ? onHoverActive : onHoverRemove,
              padding: const EdgeInsets.symmetric(
                  horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border: isGraphic
                    ? Border.all(color: AppColors.themeColor, width: 3)
                    : null,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      AppAssets.world,
                      width: 50,
                      height: 50,
                      color: AppColors.themeColor,
                    ),
                    Constants.sizedBox(height: 30.0),
                    Text(
                      'Online and Sharing',
                      style: AppTextStyles.montserratStyle(
                          color: Colors.white, fontSize: 18.0),
                    ),
                    Constants.sizedBox(height: 12.0),
                    Text(
                      'Always available online for consultation by different football agents and easy to share through networks and media',
                      style: AppTextStyles.normalStyle(fontSize: 11.0),
                      textAlign: TextAlign.center,
                    ),
                    Constants.sizedBox(height: 20.0),
                    //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                  ],
                ),
              ),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isDataAnalyst ? hoverWidth : width,
              height: isDataAnalyst ? 340 : 330,
              alignment: Alignment.center,
              transform: isDataAnalyst ? onHoverActive : onHoverRemove,
              padding: const EdgeInsets.symmetric(
                  horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border: isDataAnalyst
                    ? Border.all(color: AppColors.themeColor, width: 3)
                    : null,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      AppAssets.video_play,
                      width: 50,
                      height: 50,
                      color: AppColors.themeColor,
                    ),
                    Constants.sizedBox(height: 30.0),
                    Text(
                      'Photos and videos',
                      style: AppTextStyles.montserratStyle(
                          color: Colors.white, fontSize: 18.0),
                    ),
                    Constants.sizedBox(height: 12.0),
                    Text(
                      "Sharing of photos and videos, without restriction, for greater appreciation of the player's profile",
                      style: AppTextStyles.normalStyle(fontSize: 11.0),
                      textAlign: TextAlign.center,
                    ),
                    Constants.sizedBox(height: 20.0),
                    //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                  ],
                ),
              ),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isSupportEdit = value;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSupportEdit ? hoverWidth : width,
              height: isSupportEdit ? 340 : 330,
              alignment: Alignment.center,
              transform: isSupportEdit ? onHoverActive : onHoverRemove,
              padding: const EdgeInsets.symmetric(
                  horizontal: 18, vertical: 24),
              decoration: BoxDecoration(
                color: AppColors.bgColor2,
                borderRadius: BorderRadius.circular(30),
                border: isSupportEdit
                    ? Border.all(color: AppColors.themeColor, width: 3)
                    : null,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(3.0, 4.5),
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      AppAssets.edit,
                      width: 50,
                      height: 50,
                      color: AppColors.themeColor,
                    ),
                    Constants.sizedBox(height: 30.0),
                    Text(
                      'Support and editing',
                      style: AppTextStyles.montserratStyle(
                          color: Colors.white, fontSize: 18.0),
                    ),
                    Constants.sizedBox(height: 12.0),
                    Text(
                      'Ease and quick response in supporting content editing so that you always have your profile updated with the best content',
                      style: AppTextStyles.normalStyle(fontSize: 11.0),
                      textAlign: TextAlign.center,
                    ),
                    Constants.sizedBox(height: 20.0),
                    //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          RichText(
            text: TextSpan(
              text: 'What offers ',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Football Player Profile',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: AppColors.robinEdgeBlue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isApp ? hoverWidth : width,
                    height: isApp ? 330 : 350,
                    alignment: Alignment.center,
                    transform: isApp ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isApp
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.document,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Landing Page',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Presentation page, with all the important, relevant information '
                                'and using multimedia content such as photos and videos.',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isGraphic = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isGraphic ? hoverWidth : width,
                    height: isGraphic ? 330 : 350,
                    alignment: Alignment.center,
                    transform: isGraphic ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isGraphic
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.world,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Online and Sharing',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Always available online for consultation by different football agents and easy to share through networks and media',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 24.0),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isDataAnalyst = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isDataAnalyst ? hoverWidth : width,
                    height: isDataAnalyst ? 330 : 350,
                    alignment: Alignment.center,
                    transform: isDataAnalyst ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isDataAnalyst
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.video_play,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Photos and videos',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            "Sharing of photos and videos, without restriction, for greater appreciation of the player's profile",
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isSupportEdit = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isSupportEdit ? hoverWidth : width,
                    height: isSupportEdit ? 330 : 350,
                    alignment: Alignment.center,
                    transform: isSupportEdit ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isSupportEdit
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.edit,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Support and editing',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Ease and quick response in supporting content editing so that you always have your profile updated with the best content',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 55.0),
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          RichText(
            text: TextSpan(
              text: 'What offers ',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Football Player Profile',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: AppColors.robinEdgeBlue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Constants.sizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isApp ? hoverWidth : width,
                    height: isApp ? 390 : 380,
                    alignment: Alignment.center,
                    transform: isApp ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isApp
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.document,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Landing Page',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Presentation page, with all the important, relevant information '
                            'and using multimedia content such as photos and videos.',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isGraphic = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isGraphic ? hoverWidth : width,
                    height: isGraphic ? 390 : 380,
                    alignment: Alignment.center,
                    transform: isGraphic ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isGraphic
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.world,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Online and Sharing',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Always available online for consultation by different football agents and easy to share through networks and media',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isDataAnalyst = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isDataAnalyst ? hoverWidth : width,
                    height: isDataAnalyst ? 390 : 380,
                    alignment: Alignment.center,
                    transform: isDataAnalyst ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isDataAnalyst
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.video_play,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Photos and videos',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            "Sharing of photos and videos, without restriction, for greater appreciation of the player's profile",
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isSupportEdit = value;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isSupportEdit ? hoverWidth : width,
                    height: isSupportEdit ? 390 : 380,
                    alignment: Alignment.center,
                    transform: isSupportEdit ? onHoverActive : onHoverRemove,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 24),
                    decoration: BoxDecoration(
                      color: AppColors.bgColor2,
                      borderRadius: BorderRadius.circular(30),
                      border: isSupportEdit
                          ? Border.all(color: AppColors.themeColor, width: 3)
                          : null,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          spreadRadius: 4.0,
                          blurRadius: 4.5,
                          offset: Offset(3.0, 4.5),
                        )
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.edit,
                            width: 50,
                            height: 50,
                            color: AppColors.themeColor,
                          ),
                          Constants.sizedBox(height: 30.0),
                          Text(
                            'Support and editing',
                            style: AppTextStyles.montserratStyle(
                                color: Colors.white, fontSize: 22.0),
                          ),
                          Constants.sizedBox(height: 12.0),
                          Text(
                            'Ease and quick response in supporting content editing so that you always have your profile updated with the best content',
                            style: AppTextStyles.normalStyle(fontSize: 14.0),
                            textAlign: TextAlign.center,
                          ),
                          Constants.sizedBox(height: 20.0),
                          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 105.0),
          Text("")
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: '',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Services',
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 300,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontSize: 22.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            'Presentation page, with all the important, relevant information '
            'and using multimedia content such as photos and videos.',
            style: AppTextStyles.normalStyle(fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20.0),
          //AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
