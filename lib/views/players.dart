import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/providers/dashboard-players-provider.dart';

import 'package:saus_fc/views/all-players.dart';
import 'package:provider/provider.dart';
import 'package:saus_fc/views/player-profile.dart';
import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';

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
    DashboardPlayersProvider dashboardPlayersProvider = Provider.of(context);
    dashboardPlayersProvider.getDashboardPlayersData();

    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 35.0),
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: 'PLAYERS ',
                style: AppTextStyles.headingStyles(fontSize: 20.0),
                children: [
                  TextSpan(
                    text: '',
                    style: AppTextStyles.headingStyles(
                        fontSize: 30, color: AppColors.robinEdgeBlue),
                  )
                ],
              ),
            ),
          ),
          Constants.sizedBox(width: 20.0),
          GridView.builder(
            itemCount: dashboardPlayersProvider.dashboardPlayersDataList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 430,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var data =
                  dashboardPlayersProvider.dashboardPlayersDataList[index];
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
                  child: Column(
                    children: [
                      InkWell(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.4,
                            child: Image.network("${data.imageUrl}",
                                fit: BoxFit.fill,),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlayerProfile(
                                        playerProfileModel: data,
                                      )));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Text(
                            '${data.shortName}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          MaterialButton(
            color: AppColors.themeColor,
            splashColor: AppColors.lawGreen,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hoverColor: AppColors.aqua,
            elevation: 7,
            height: 55,
            minWidth: 60,
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
          SizedBox(
            height: 95,
          ),
          Text("")
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 35.0),
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          Row(
            children: [
              MaterialButton(
                color: AppColors.themeColor,
                splashColor: AppColors.lawGreen,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                hoverColor: AppColors.aqua,
                elevation: 7,
                height: 70,
                minWidth: 40,
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
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: GridView.builder(
                  itemCount:
                      dashboardPlayersProvider.dashboardPlayersDataList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 430,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    var data = dashboardPlayersProvider
                        .dashboardPlayersDataList[index];
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
                        child: Column(
                          children: [
                            InkWell(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.4,
                                  child: Image.network("${data.imageUrl}",
                                      fit: BoxFit.fill,
                                      width: size.width * 0.2),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlayerProfile(
                                              playerProfileModel: data,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  '${data.shortName}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 95,
          ),
          Text("")
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 35.0),
          buildProjectText(),
          Constants.sizedBox(height: 40.0),
          Row(
            children: [
              MaterialButton(
                color: AppColors.themeColor,
                splashColor: AppColors.lawGreen,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                hoverColor: AppColors.aqua,
                elevation: 7,
                height: 70,
                minWidth: 70,
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
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: GridView.builder(
                  itemCount:
                      dashboardPlayersProvider.dashboardPlayersDataList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 430,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    var data = dashboardPlayersProvider
                        .dashboardPlayersDataList[index];
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
                        child: Column(
                          children: [
                            InkWell(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.4,
                                  child: Image.network("${data.imageUrl}",
                                      fit: BoxFit.fill,
                                      width: size.width * 0.2),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlayerProfile(
                                              playerProfileModel: data,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  '${data.shortName}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 120.0),
                child: Text(
                  "HONORS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36),
                ),
              ),
              Constants.sizedBox(width: 20.0),
              Expanded(
                child: FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          //hoveredIndex = index;
                        } else {
                          //hoveredIndex = null;
                        }
                      });
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.25,
                            child: Image.asset("assets/kupa.png",
                                fit: BoxFit.fill, width: size.width * 0.15),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'INTER-STUDENTS FOOTBAL\n TOURNAMENT 2023/24',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'Quarter-Final 1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FadeInUpBig(
                  duration: const Duration(milliseconds: 1600),
                  child: InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          //hoveredIndex = index;
                        } else {
                          //hoveredIndex = null;
                        }
                      });
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.20,
                            child: Image.asset("assets/cup.png",
                                fit: BoxFit.fill, width: size.width * 0.13),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'INTER-CITY FOOTBAL\n TOURNAMENT 2022/23',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'final 1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 95,
          ),
          Text("")
        ],
      ),
      paddingWidth: size.width * 0.04,
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
