import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
    "assets/bursa_44.jpg",
    "assets/team2022_1.jpg",
    "assets/sausfcteam.jpeg",
    "assets/sausfc_2023.png",
    "assets/sausfc_istanbul_team.png",
    "assets/match_sakarya.jpeg",
  ];
  final socialButtons = <String>[
    //AppAssets.facebook,
    AppAssets.insta,
    AppAssets.twitter,
    AppAssets.linkedIn,
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
                          TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 2.2,
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
                      physics: NeverScrollableScrollPhysics(),
                      controller: _swiperController,
                      autoplay: false,
                      pagination: const SwiperPagination(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                            //size: 12,
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
                            horizontal: size.width * 0.0), // Adjust spacing as needed
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
                                  size: 25,
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
                                  size: 25,
                                  color: AppColors.white,
                                )),
                          ],
                        ),
                      ))
                ],
              ),
              Constants.sizedBox(height: 22.0),
              FadeInUp(
                duration: const Duration(milliseconds: 1600),
                child: SizedBox(
                  height: 48,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: socialButtons.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) =>
                        Constants.sizedBox(width: 8.0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () async{
                          if(index==0){
                            const url =
                                'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                          } else {
                          throw 'Could not launch $url';
                          }
                          } else if(index==1){
                            const url =
                                ''; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          } else if(index==2){
                            const url =
                                'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          } else if(index==3){
                            const url =
                                'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }
                        },
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
                        child: Ink(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.themeColor, width: 2.0),
                            color: AppColors.bgColor,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Center(
                            child: Image.asset(
                              socialButtons[index],
                              width: 10,
                              height: 12,
                              color: socialBI == index ? AppColors.bgColor : AppColors.themeColor,
                              // fit: BoxFit.fill,
                            ),
                          ),
                        ),
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
          )
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
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 2.2,
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
                  physics: NeverScrollableScrollPhysics(),
                  controller: _swiperController,
                  autoplay: false,
                  pagination: const SwiperPagination(
                      margin: EdgeInsets.only(bottom: 25),
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        //size: 12,
                          color: Colors.white, activeColor: Color(0xff00416A))),
                  //control: const SwiperControl(color: Colors.black),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 3.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2), // Adjust spacing as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _swiperController.previous();
                              });
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 40,
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
                              size: 40,
                              color: AppColors.white,
                            )),
                      ],
                    ),
                  ))
            ],
          ),
          Constants.sizedBox(height: 22.0),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              height: 48,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: socialButtons.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) =>
                    Constants.sizedBox(width: 8.0),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async{
                      if(index==0){
                        const url =
                            'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==1){
                        const url =
                            ''; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==2){
                        const url =
                            'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==3){
                        const url =
                            'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    },
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
          //const ProfileAnimation(),
        ],
      ),
      desktop: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('WELCOME TO SAUS FC ACADEMY',
                  textStyle: AppTextStyles.montserratStyle(color: Colors.white))
            ],
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 2.2,
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
                  physics: NeverScrollableScrollPhysics(),
                  controller: _swiperController,
                  autoplay: false,
                  pagination: const SwiperPagination(
                      margin: EdgeInsets.only(bottom: 25),
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        //size: 12,
                          color: Colors.white, activeColor: Color(0xff00416A))),
                  //control: const SwiperControl(color: Colors.black),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 3.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.2), // Adjust spacing as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _swiperController.previous();
                              });
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 40,
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
                              size: 40,
                              color: AppColors.white,
                            )),
                      ],
                    ),
                  ))
            ],
          ),
          Constants.sizedBox(height: 22.0),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              height: 48,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: socialButtons.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) =>
                    Constants.sizedBox(width: 8.0),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async{
                      if(index==0){
                        const url =
                            'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==1){
                        const url =
                            ''; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==2){
                        const url =
                            'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      } else if(index==3){
                        const url =
                            'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    },
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
          //buildHomePersonalInfo(size),
        ],
      ),
      paddingWidth: size.width * 0.0,
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
              aspectRatio: 2.2,
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
                physics: NeverScrollableScrollPhysics(),
                controller: _swiperController,
                autoplay: false,
                pagination: const SwiperPagination(
                  margin: EdgeInsets.only(bottom: 25),
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      //size: 12,
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
                      horizontal: size.width * 0.2), // Adjust spacing as needed
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
        Constants.sizedBox(height: 22.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: socialButtons.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, child) =>
                  Constants.sizedBox(width: 8.0),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async{
                    if(index==0){
                      const url =
                          'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    } else if(index==1){
                      const url =
                          ''; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    } else if(index==2){
                      const url =
                          'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    } else if(index==3){
                      const url =
                          'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }
                  },
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
