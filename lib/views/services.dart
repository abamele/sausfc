import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../globals/app-assets.dart';
import '../globals/app-button.dart';
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
  bool isApp = false, isGraphic = false, isDataAnalyst = false, isSupportEdit = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
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
          Constants.sizedBox(height: 40.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Landing Page',
              asset: AppAssets.code,
              hover: isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Online and Sharing',
              asset: AppAssets.brush,
              hover: isGraphic,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Photos and videos',
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isSupportEdit = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Support and editing',
              asset: AppAssets.analyst,
              hover: isSupportEdit,
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
          Constants.sizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Landing Page',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Online and Sharing',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Photos and Videos',
                  asset: AppAssets.code,
                  hover: isDataAnalyst,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isSupportEdit = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Support Editing',
                  asset: AppAssets.brush,
                  hover: isSupportEdit,
                ),
              ),
            ],
          ),
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
                  child: buildAnimatedContainer(
                    title: 'Landing Page',
                    asset: AppAssets.code,
                    hover: isApp,
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
                  child: buildAnimatedContainer(
                    title: 'Online and Sharing',
                    asset: AppAssets.brush,
                    hover: isGraphic,
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
                  child: buildAnimatedContainer(
                    title: 'Photos and videos',
                    asset: AppAssets.analyst,
                    hover: isDataAnalyst,
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
                  child: buildAnimatedContainer(
                    title: 'Support and editing',
                    asset: AppAssets.analyst,
                    hover: isSupportEdit,
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 35.0),
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
