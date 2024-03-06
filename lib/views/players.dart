import 'package:animate_do/animate_do.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:saus_fc/views/all-players.dart';
import 'package:saus_fc/views/single-player.dart';
import 'package:provider/provider.dart';
import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';
import '../providers/goalkeeper-provider.dart';
import '../providers/player-profile-provider.dart';

class Players extends StatefulWidget {
  const Players({Key? key}) : super(key: key);

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  final onH0verEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    PlayerProfileProvider playerProfileProvider = Provider.of(context);
    playerProfileProvider.getPlayerProfileData();
    GoalKeeperProvider goalKeeperProvider = Provider.of(context);
    goalKeeperProvider.getGoalKeeperData();

    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          GridView.builder(
            itemCount: playerProfileProvider.getAllPlayerProfileDataList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 380,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              var data =
                  playerProfileProvider.getAllPlayerProfileDataList[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = null;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network("${data.imageUrl}"),
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          width: MediaQuery.of(context).size.width * 0.5,
                          duration: const Duration(milliseconds: 600),
                          transform:
                              index == hoveredIndex ? onH0verEffect : null,
                          curve: Curves.easeIn,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(
                            children: [
                              Text(
                                '${data.fullName}                                             ',
                                style: AppTextStyles.montserratStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                              Constants.sizedBox(height: 15.0),
                              Text(
                                '${data.position}                                            ',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.black87),
                                //textAlign: TextAlign.center,
                              ),
                              Constants.sizedBox(height: 30.0),
                              InkWell(
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppAssets.share,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SinglePlayer(
                                                playerProfileModel: data,
                                              )));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          GridView.builder(
            itemCount: playerProfileProvider.getAllPlayerProfileDataList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 380,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              var data =
                  playerProfileProvider.getAllPlayerProfileDataList[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = null;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          /*decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),*/
                          child: Image.network("${data.imageUrl}"),
                        ),
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          width: MediaQuery.of(context).size.width * 0.26,
                          duration: const Duration(milliseconds: 600),
                          transform:
                              index == hoveredIndex ? onH0verEffect : null,
                          curve: Curves.easeIn,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(
                            children: [
                              Text(
                                '${data.fullName}                                             ',
                                style: AppTextStyles.montserratStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                              Constants.sizedBox(height: 15.0),
                              Text(
                                '${data.position}                                            ',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.black87),
                                //textAlign: TextAlign.center,
                              ),
                              Constants.sizedBox(height: 30.0),
                              InkWell(
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppAssets.share,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SinglePlayer(
                                                playerProfileModel: data,
                                              )));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 35.0),
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 380,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              //var data = playerProfileProvider.getAllPlayerProfileDataList[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = null;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.47,
                            child: Card(
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/sayid10.png",
                                    fit: BoxFit.fill,
                                      width: size.width * 0.23
                                  ),
                                  /*FancyShimmerImage(
                                    alignment: Alignment.bottomCenter,
                                    imageUrl: "${data5.imageUrl}",
                                    width: size.width * 0.23,
                                    boxFit: BoxFit.fill,
                                    //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                  ),*/
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Row(
                                      children: [
                                        Container(
                                          color: AppColors.themeColor,
                                          width: 60,
                                          height: 90,
                                          child: Center(
                                            child: Text(
                                              "2",
                                              style:
                                                  AppTextStyles.montserratStyle(
                                                      fontSize: 28,
                                                      color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 90,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(4.0),
                                                    bottomRight:
                                                        Radius.circular(4.0))),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  "MUSTAFA HUSSEIN",
                                                  style:
                                                      AppTextStyles.normalStyle(
                                                          color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          /*Container(
                            width: size.width * 0.23,
                            height: size.height * 0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage(''), // Resim
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Transform.translate(
                                  offset:
                                      Offset(0, 160), // Çapraz başlangıç noktası
                                  child: Transform.rotate(
                                    angle: -0.985398, // 45 derece
                                    child: Container(
                                      color:
                                          Colors.white, // Çapraz beyaz arka plan
                                      width:
                                          170.42, //  Kare kökü 2 katı (100 * √2)
                                      height: MediaQuery.of(context).size.height *
                                          0.6, // Container'ın yüksekliği
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(33 / 330),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 118.0,
                                      ),
                                      child: Text(
                                        'MUSTAFA HUSSEIN',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),*/
                        ),
                        onTap: () {
                          print("tıkla");
                        },
                      ),
                      Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          width: MediaQuery.of(context).size.width * 0.19,
                          duration: const Duration(milliseconds: 600),
                          transform:
                              index == hoveredIndex ? onH0verEffect : null,
                          curve: Curves.easeIn,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 22),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'MUSTAFA HUSSEIN                                             ',
                                style: AppTextStyles.montserratStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                              Constants.sizedBox(height: 15.0),
                              Text(
                                'CENTRE BACK                                            ',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.black87),
                                //textAlign: TextAlign.center,
                              ),
                              Constants.sizedBox(height: 30.0),
                              InkWell(
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppAssets.share,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                onTap: () {
                                  /*Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SinglePlayer(
                                            playerProfileModel: data,
                                          )));*/
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Constants.sizedBox(height: 35.0),
          MaterialButton(
            color: AppColors.themeColor,
            splashColor: AppColors.lawGreen,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hoverColor: AppColors.aqua,
            elevation: 7,
            height: 60,
            minWidth: 90,
            focusElevation: 12,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SEE ALL PLAYERS",
                  style: AppTextStyles.headerTextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AllPlayers()));
            },
          ),
          Text(""),
          Constants.sizedBox(height: 15.0),
          /*Center(
            child: Container(
              width: size.width * 0.23,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('assets/stoper.jpeg'), // Resim
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset(10, 150), // Çapraz başlangıç noktası
                    child: Transform.rotate(
                      angle: -0.485398, // 45 derece
                      child: Container(
                        color: Colors.white, // Çapraz beyaz arka plan
                        width: 111.42, //  Kare kökü 2 katı (100 * √2)
                        height: MediaQuery.of(context).size.height * 0.25, // Container'ın yüksekliği
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Merhaba Flutter',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),*/
          GridView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 380,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              //var data5 = goalKeeperProvider.getGoalKeeperDataList[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = null;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/stopper1.png",
                              ),
                              /*FancyShimmerImage(
                                alignment: Alignment.bottomCenter,
                                imageUrl: "${data5.imageUrl}",
                                width: size.width * 0.23,
                                boxFit: BoxFit.fill,
                                //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                              ),*/
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Row(
                                  children: [
                                    Container(
                                      color: AppColors.themeColor,
                                      width: 60,
                                      height: 90,
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: AppTextStyles.montserratStyle(
                                              fontSize: 28,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(4.0),
                                                bottomRight:
                                                    Radius.circular(4.0))),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              "MUSTAFA HUSSEIN",
                                              style: AppTextStyles.normalStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                              /*Transform.translate(
                                offset:
                                Offset(0, 160), // Çapraz başlangıç noktası
                                child: Transform.rotate(
                                  angle: -0.985398, // 45 derece
                                  child: Container(
                                    color:
                                    Colors.white, // Çapraz beyaz arka plan
                                    width:
                                    170.42, //  Kare kökü 2 katı (100 * √2)
                                    height: MediaQuery.of(context).size.height *
                                        0.6, // Container'ın yüksekliği
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(33 / 330),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 118.0,
                                    ),
                                    child: Text(
                                      'MUSTAFA HUSSEIN',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ),
                      /*Visibility(
                        visible: index == hoveredIndex,
                        child: AnimatedContainer(
                          width: MediaQuery.of(context).size.width * 0.23,
                          duration: const Duration(milliseconds: 600),
                          transform:
                              index == hoveredIndex ? onH0verEffect : null,
                          curve: Curves.easeIn,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                colors: [
                                  AppColors.themeColor.withOpacity(1.0),
                                  AppColors.themeColor.withOpacity(0.9),
                                  AppColors.themeColor.withOpacity(0.8),
                                  AppColors.themeColor.withOpacity(0.6),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'MUSTAFA HUSSEIN                                             ',
                                style: AppTextStyles.montserratStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                              Constants.sizedBox(height: 15.0),
                              Text(
                                'CENTRE BACK                                            ',
                                style: AppTextStyles.normalStyle(
                                    color: Colors.black87),
                                //textAlign: TextAlign.center,
                              ),
                              Constants.sizedBox(height: 30.0),
                              InkWell(
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    AppAssets.share,
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                onTap: () {
                                  /*Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SinglePlayer(
                                            playerProfileModel: data,
                                          )));*/
                                },
                              )
                            ],
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 380,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/maillot.jpeg"),
                        fit: BoxFit.fill),
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    width: MediaQuery.of(context).size.width * 0.23,
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withOpacity(1.0),
                            AppColors.themeColor.withOpacity(0.9),
                            AppColors.themeColor.withOpacity(0.8),
                            AppColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Aba Mele                                             ',
                          style: AppTextStyles.montserratStyle(
                              color: Colors.black87, fontSize: 20),
                        ),
                        Constants.sizedBox(height: 15.0),
                        Text(
                          'Orta Saha                                            ',
                          style:
                              AppTextStyles.normalStyle(color: Colors.black87),
                          //textAlign: TextAlign.center,
                        ),
                        Constants.sizedBox(height: 30.0),
                        InkWell(
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              AppAssets.share,
                              width: 25,
                              height: 25,
                              fit: BoxFit.fill,
                            ),
                          ),
                          onTap: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SinglePlayer(playerProfileModel: data,)));*/
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'PLAYERS ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: '',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}
