import 'package:animate_do/animate_do.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:saus_fc/providers/forward-provider.dart';
import 'package:saus_fc/providers/goalkeeper-provider.dart';
import 'package:saus_fc/providers/midfield-provider.dart';
import 'package:saus_fc/views/player-profile.dart';
import 'package:saus_fc/views/single-helper.dart';
import 'package:saus_fc/views/single-player.dart';
import 'package:provider/provider.dart';

import '../globals/app-assets.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../providers/defender-provider.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';
import 'footer.dart';

class AllPlayers extends StatefulWidget {
  const AllPlayers({super.key});

  @override
  State<AllPlayers> createState() => _AllPlayersState();
}

class _AllPlayersState extends State<AllPlayers> {
  var hoveredIndex;
  var hoveredIndex1;
  var hoveredIndex2;
  var hoveredIndex3;
  final onH0verEffect = Matrix4.identity()..scale(1.0);

  @override
  Widget build(BuildContext context) {
    GoalKeeperProvider goalKeeperProvider = Provider.of(context);
    goalKeeperProvider.getGoalKeeperData();
    DefenderProvider defenderProvider = Provider.of(context);
    defenderProvider.getDefenderData();
    MidfieldProvider midfieldProvider = Provider.of(context);
    midfieldProvider.getMidfieldData();
    ForwardProvider forwardProvider = Provider.of(context);
    forwardProvider.getForwardData();

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0.0,
        toolbarHeight: 90,
        title: MaterialButton(
          elevation: 8,
          child: Image.asset("assets/logoweb.png", width: 55, height: 55),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainDashBoard()));
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: Container(),
        tablet: Container(),
        desktop: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "GOALKEEPERS",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.01,
                            horizontal: size.width * 0.03),
                        child: GridView.builder(
                          itemCount:
                              goalKeeperProvider.getGoalKeeperDataList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 380,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            var data1 =
                                goalKeeperProvider.getGoalKeeperDataList[index];
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
                                        child: Card(
                                          child: Stack(
                                            children: [
                                              /*Image.asset(
                                                "assets/stopper1.png",
                                              ),*/
                                              FancyShimmerImage(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                imageUrl: "${data1.imageUrl}",
                                                width: size.width * 0.23,
                                                height: size.height * 4,
                                                boxFit: BoxFit.fill,
                                                //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                              ),
                                              Positioned(
                                                left: 0,
                                                right: 0,
                                                bottom: 0,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      color:
                                                          AppColors.themeColor,
                                                      width: 60,
                                                      height: 90,
                                                      child: Center(
                                                        child: Text(
                                                          "${data1.playerNo}",
                                                          style: AppTextStyles
                                                              .montserratStyle(
                                                                  fontSize: 28,
                                                                  color: Colors
                                                                      .black),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 90,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        4.0))),
                                                        child: Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Text(
                                                              "${data1.fullName}",
                                                              style: AppTextStyles
                                                                  .normalStyle(
                                                                      color: Colors
                                                                          .black),
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
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PlayerProfile(
                                                        playerProfileModel:
                                                            data1)));
                                      },
                                    ),
                                    /*ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        width: size.width * 0.23,
                                        height: size.height * 0.6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/stopper1.png'), // Resim
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Transform.translate(
                                              offset: Offset(0,
                                                  160), // Çapraz başlangıç noktası
                                              child: Transform.rotate(
                                                angle: -0.985398, // 45 derece
                                                child: Container(
                                                  color: Colors
                                                      .white, // Çapraz beyaz arka plan
                                                  width:
                                                      170.42, //  Kare kökü 2 katı (100 * √2)
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.6, // Container'ın yüksekliği
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: RotationTransition(
                                                turns: AlwaysStoppedAnimation(
                                                    33 / 330),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: 118.0,
                                                  ),
                                                  child: Text(
                                                    '${data1.fullName}',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),*/
                                    /*Visibility(
                                      visible: index == hoveredIndex,
                                      child: AnimatedContainer(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        duration:
                                            const Duration(milliseconds: 600),
                                        transform: index == hoveredIndex
                                            ? onH0verEffect
                                            : null,
                                        curve: Curves.easeIn,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 16),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          gradient: LinearGradient(
                                              colors: [
                                                AppColors.themeColor
                                                    .withOpacity(1.0),
                                                AppColors.themeColor
                                                    .withOpacity(0.9),
                                                AppColors.themeColor
                                                    .withOpacity(0.8),
                                                AppColors.themeColor
                                                    .withOpacity(0.6),
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter),
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              '${data1.fullName}                                             ',
                                              style:
                                                  AppTextStyles.montserratStyle(
                                                      color: Colors.black87,
                                                      fontSize: 20),
                                            ),
                                            Constants.sizedBox(height: 15.0),
                                            Text(
                                              '${data1.position}                                            ',
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
                      ),
                    ),
                    /*Container(
                      margin: EdgeInsets.only(right: 60),
                      child: MaterialButton(
                        color: AppColors.themeColor,
                        splashColor: AppColors.lawGreen,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 10),
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
                              style: AppTextStyles.headerTextStyle(
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainDashBoard()));
                        },
                      ),
                    ),*/
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(""),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppColors.bgColor2,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "DEFENDERS",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.01),
                          child: GridView.builder(
                            itemCount:
                                defenderProvider.getDefenderDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 380,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data2 =
                                  defenderProvider.getDefenderDataList[index];
                              return FadeInUpBig(
                                duration: const Duration(milliseconds: 1600),
                                child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      if (value) {
                                        hoveredIndex1 = index;
                                      } else {
                                        hoveredIndex1 = null;
                                      }
                                    });
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Card(
                                            child: Stack(
                                              children: [
                                                /*Image.asset(
                                                  "assets/stopper1.png",
                                                ),*/
                                                FancyShimmerImage(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  imageUrl: "${data2.imageUrl}",
                                                  width: size.width * 0.23,
                                                  height: size.height * 4,
                                                  boxFit: BoxFit.fill,
                                                  //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        color: AppColors
                                                            .themeColor,
                                                        width: 60,
                                                        height: 90,
                                                        child: Center(
                                                          child: Text(
                                                            "${data2.playerNo}",
                                                            style: AppTextStyles
                                                                .montserratStyle(
                                                                    fontSize:
                                                                        28,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 90,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          4.0))),
                                                          child: Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      10.0),
                                                              child: Text(
                                                                "${data2.fullName}",
                                                                style: AppTextStyles
                                                                    .normalStyle(
                                                                        color: Colors
                                                                            .black),
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
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                          playerProfileModel:
                                                              data2)));
                                        },
                                      ),
                                      /*ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: size.width * 0.23,
                                          height: size.height * 0.6,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/stopper1.png'), // Resim
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Transform.translate(
                                                offset: Offset(0,
                                                    160), // Çapraz başlangıç noktası
                                                child: Transform.rotate(
                                                  angle: -0.985398, // 45 derece
                                                  child: Container(
                                                    color: Colors
                                                        .white, // Çapraz beyaz arka plan
                                                    width:
                                                        170.42, //  Kare kökü 2 katı (100 * √2)
                                                    height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height *
                                                        0.6, // Container'ın yüksekliği
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: RotationTransition(
                                                  turns: AlwaysStoppedAnimation(
                                                      33 / 330),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 150.0,
                                                    ),
                                                    child: Text(
                                                      '${data2.fullName}',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),*/
                                      /*Visibility(
                                        visible: index == hoveredIndex1,
                                        child: AnimatedContainer(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          duration:
                                              const Duration(milliseconds: 600),
                                          transform: index == hoveredIndex1
                                              ? onH0verEffect
                                              : null,
                                          curve: Curves.easeIn,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [
                                                  AppColors.themeColor
                                                      .withOpacity(1.0),
                                                  AppColors.themeColor
                                                      .withOpacity(0.9),
                                                  AppColors.themeColor
                                                      .withOpacity(0.8),
                                                  AppColors.themeColor
                                                      .withOpacity(0.6),
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                '${data2.fullName}                                             ',
                                                style: AppTextStyles
                                                    .montserratStyle(
                                                        color: Colors.black87,
                                                        fontSize: 20),
                                              ),
                                              Constants.sizedBox(height: 15.0),
                                              Text(
                                                '${data2.position}                                            ',
                                                style:
                                                    AppTextStyles.normalStyle(
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
                        ),
                      ),
                      /*Container(
                        margin: EdgeInsets.only(right: 20),
                        child: MaterialButton(
                          color: AppColors.themeColor,
                          splashColor: AppColors.lawGreen,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 10),
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
                                style: AppTextStyles.headerTextStyle(
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainDashBoard()));
                          },
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(""),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppColors.bgColor,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "MIDFIELDERS",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.01),
                          child: GridView.builder(
                            itemCount:
                                midfieldProvider.getMidfieldDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 380,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data3 =
                                  midfieldProvider.getMidfieldDataList[index];
                              return FadeInUpBig(
                                duration: const Duration(milliseconds: 1600),
                                child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      if (value) {
                                        hoveredIndex2 = index;
                                      } else {
                                        hoveredIndex2 = null;
                                      }
                                    });
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Card(
                                            child: Stack(
                                              children: [
                                                Image.asset(
                                                  "assets/stopper1.png",
                                                ),
                                                FancyShimmerImage(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  imageUrl: "${data3.imageUrl}",
                                                  width: size.width * 0.23,
                                                  height: size.height * 4,
                                                  boxFit: BoxFit.fill,
                                                  //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        color: AppColors
                                                            .themeColor,
                                                        width: 60,
                                                        height: 90,
                                                        child: Center(
                                                          child: Text(
                                                            "${data3.playerNo}",
                                                            style: AppTextStyles
                                                                .montserratStyle(
                                                                    fontSize:
                                                                        28,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 90,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          4.0))),
                                                          child: Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      10.0),
                                                              child: Text(
                                                                "${data3.fullName}",
                                                                style: AppTextStyles
                                                                    .normalStyle(
                                                                        color: Colors
                                                                            .black),
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
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                          playerProfileModel:
                                                              data3)));
                                        },
                                      ),
                                      /*ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: size.width * 0.23,
                                          height: size.height * 0.6,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/stopper1.png'), // Resim
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Transform.translate(
                                                offset: Offset(0,
                                                    160), // Çapraz başlangıç noktası
                                                child: Transform.rotate(
                                                  angle: -0.985398, // 45 derece
                                                  child: Container(
                                                    color: Colors
                                                        .white, // Çapraz beyaz arka plan
                                                    width:
                                                        170.42, //  Kare kökü 2 katı (100 * √2)
                                                    height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height *
                                                        0.6, // Container'ın yüksekliği
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: RotationTransition(
                                                  turns: AlwaysStoppedAnimation(
                                                      33 / 330),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 118.0,
                                                    ),
                                                    child: Text(
                                                      '${data3.fullName}',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),*/
                                      /*Visibility(
                                        visible: index == hoveredIndex2,
                                        child: AnimatedContainer(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          duration:
                                              const Duration(milliseconds: 600),
                                          transform: index == hoveredIndex2
                                              ? onH0verEffect
                                              : null,
                                          curve: Curves.easeIn,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [
                                                  AppColors.themeColor
                                                      .withOpacity(1.0),
                                                  AppColors.themeColor
                                                      .withOpacity(0.9),
                                                  AppColors.themeColor
                                                      .withOpacity(0.8),
                                                  AppColors.themeColor
                                                      .withOpacity(0.6),
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                '${data3.fullName}                                             ',
                                                style: AppTextStyles
                                                    .montserratStyle(
                                                        color: Colors.black87,
                                                        fontSize: 20),
                                              ),
                                              Constants.sizedBox(height: 15.0),
                                              Text(
                                                '${data3.position}                                            ',
                                                style:
                                                    AppTextStyles.normalStyle(
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
                        ),
                      ),
                      /*Container(
                        margin: EdgeInsets.only(right: 20),
                        child: MaterialButton(
                          color: AppColors.themeColor,
                          splashColor: AppColors.lawGreen,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 10),
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
                                style: AppTextStyles.headerTextStyle(
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainDashBoard()));
                          },
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("")
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppColors.bgColor2,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "FORWARDS",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.01),
                          child: GridView.builder(
                            itemCount:
                                forwardProvider.getForwardDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 380,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data4 =
                                  forwardProvider.getForwardDataList[index];
                              return FadeInUpBig(
                                duration: const Duration(milliseconds: 1600),
                                child: InkWell(
                                  onTap: () {},
                                  onHover: (value) {
                                    setState(() {
                                      if (value) {
                                        hoveredIndex3 = index;
                                      } else {
                                        hoveredIndex3 = null;
                                      }
                                    });
                                  },
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Card(
                                            child: Stack(
                                              children: [
                                                /*Image.asset(
                                                  "assets/stopper1.png",
                                                ),*/
                                                FancyShimmerImage(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  imageUrl: "${data4.imageUrl}",
                                                  width: size.width * 0.23,
                                                  height: size.height * 4,
                                                  boxFit: BoxFit.fill,
                                                  //boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        color: AppColors
                                                            .themeColor,
                                                        width: 60,
                                                        height: 90,
                                                        child: Center(
                                                          child: Text(
                                                            "${data4.playerNo}",
                                                            style: AppTextStyles
                                                                .montserratStyle(
                                                                    fontSize:
                                                                        28,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          height: 90,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              borderRadius: BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          4.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          4.0))),
                                                          child: Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      10.0),
                                                              child: Text(
                                                                "${data4.fullName}",
                                                                style: AppTextStyles
                                                                    .normalStyle(
                                                                        color: Colors
                                                                            .black),
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
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                          playerProfileModel:
                                                              data4)));
                                        },
                                      ),
                                      /*ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: size.width * 0.23,
                                          height: size.height * 0.6,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/stopper1.png'), // Resim
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Transform.translate(
                                                offset: Offset(0,
                                                    160), // Çapraz başlangıç noktası
                                                child: Transform.rotate(
                                                  angle: -0.985398, // 45 derece
                                                  child: Container(
                                                    color: Colors
                                                        .white, // Çapraz beyaz arka plan
                                                    width:
                                                        170.42, //  Kare kökü 2 katı (100 * √2)
                                                    height: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height *
                                                        0.6, // Container'ın yüksekliği
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: RotationTransition(
                                                  turns: AlwaysStoppedAnimation(
                                                      33 / 330),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 118.0,
                                                    ),
                                                    child: Text(
                                                      '${data4.fullName}',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),*/
                                      /*Visibility(
                                        visible: index == hoveredIndex3,
                                        child: AnimatedContainer(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          duration:
                                              const Duration(milliseconds: 600),
                                          transform: index == hoveredIndex3
                                              ? onH0verEffect
                                              : null,
                                          curve: Curves.easeIn,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14, vertical: 16),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [
                                                  AppColors.themeColor
                                                      .withOpacity(1.0),
                                                  AppColors.themeColor
                                                      .withOpacity(0.9),
                                                  AppColors.themeColor
                                                      .withOpacity(0.8),
                                                  AppColors.themeColor
                                                      .withOpacity(0.6),
                                                ],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                '${data4.fullName}                                             ',
                                                style: AppTextStyles
                                                    .montserratStyle(
                                                        color: Colors.black87,
                                                        fontSize: 20),
                                              ),
                                              Constants.sizedBox(height: 15.0),
                                              Text(
                                                '${data4.position}                                            ',
                                                style:
                                                    AppTextStyles.normalStyle(
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
                        ),
                      ),
                      /*Container(
                        margin: EdgeInsets.only(right: 20),
                        child: MaterialButton(
                          color: AppColors.themeColor,
                          splashColor: AppColors.lawGreen,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 10),
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
                                style: AppTextStyles.headerTextStyle(
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainDashBoard()));
                          },
                        ),
                      ),*/
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("")
                ],
              ),
            ),
            FooterClass()
          ],
        ),
      ),
    );
  }
}
