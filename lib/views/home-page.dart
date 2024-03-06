import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SwiperController _swiperController = SwiperController();

  List images = [
    "assets/team 2021.jpeg",
    "assets/team2022_2.png",
    "assets/team2022_3.png",
    "assets/team2022_1.jpg",
    "assets/sausfcteam.jpeg",
    "assets/team2023_1.png",
  ];
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];

  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Welcome to SAUS FC Academy',
                      textStyle:
                          AppTextStyles.montserratStyle(color: Colors.white))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              Constants.sizedBox(height: 25.0),
              //const ProfileAnimation(),
            ],
          ),
          //const ProfileAnimation(),
          Constants.sizedBox(height: 25.0),
          buildHomePersonalInfo(size),
        ],
      ),
      tablet: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Welcome to SAUS FC Academy',
                  textStyle: AppTextStyles.montserratStyle(color: Colors.white))
            ],
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          Constants.sizedBox(height: 25.0),
          buildHomePersonalInfo(size),
          /*Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Welcome to SAUS FC Academy',
                        textStyle: AppTextStyles.montserratStyle(
                            color: Colors.white))
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
              Constants.sizedBox(height: 25.0),
              //const ProfileAnimation(),
            ],
          ),*/
          //const ProfileAnimation(),
        ],
      ),
      desktop: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Welcome to SAUS FC Academy',
                  textStyle: AppTextStyles.montserratStyle(color: Colors.white))
            ],
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          SizedBox(
            height: 15,
          ),
          buildHomePersonalInfo(size),
          /*Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Welcome to SAUS FC Academy',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.white))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              Constants.sizedBox(height: 25.0),
              const ProfileAnimation(),
            ],
          ),*/
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /*AspectRatio(
          aspectRatio: 0.01,
          child: Image.asset(
            "assets/family.jpeg",
            fit: BoxFit.cover,
          ),
        ),*/
        //Image.asset("assets/sausfcteam.jpeg",fit:  BoxFit.fitWidth, width: 550, height: 350,),
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Swiper(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final image = images[index];
                  return Image.asset(
                    image,
                    fit: BoxFit.cover,
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                controller: _swiperController,
                autoplay: false,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Color(0xff00416A))),
                //control: const SwiperControl(color: Colors.black),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 3.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.3), // Adjust spacing as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _swiperController.previous();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 35,
                            color: AppColors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _swiperController.next();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 35,
                            color: AppColors.white,
                          )),
                    ],
                  ),
                ))
          ],
        ),
        /*FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'Hello, It\'s Me',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Mukhtar Ali Khan',
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                'And I\'m a ',
                style: AppTextStyles.montserratStyle(color: Colors.white),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle:
                    AppTextStyles.montserratStyle(color: Colors.lightBlue),
                  ),
                  TyperAnimatedText('Academy',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue)),
                  TyperAnimatedText('SAUS FC Academy',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Expanded(
            child: Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder '
                  'text commonly used to demonstrate the visual form of a document'
                  ' or a typeface without relying on meaningful content.',
              style: AppTextStyles.normalStyle(),
            ),
          ),
        ),*/
        Constants.sizedBox(height: 22.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: socialButtons.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, child) =>
                  Constants.sizedBox(width: 8.0),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        socialBI = index;
                      } else {
                        socialBI = null;
                      }
                    });
                  },
                  borderRadius: BorderRadius.circular(550.0),
                  hoverColor: AppColors.themeColor,
                  splashColor: AppColors.lawGreen,
                  child: buildSocialButton(
                      asset: socialButtons[index],
                      hover: socialBI == index ? true : false),
                );
              },
            ),
          ),
        ),
        Constants.sizedBox(height: 18.0),
        /*FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {}, buttonName: 'Download CV'),
        ),*/
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
        // fit: BoxFit.fill,
      ),
    );
  }
}
