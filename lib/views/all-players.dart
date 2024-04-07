import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:saus_fc/providers/forward-provider.dart';
import 'package:saus_fc/providers/goalkeeper-provider.dart';
import 'package:saus_fc/providers/midfield-provider.dart';
import 'package:saus_fc/views/player-profile.dart';
import 'package:saus_fc/helpers/single-helper.dart';
import 'package:provider/provider.dart';

import '../globals/app-color.dart';
import '../globals/app-styles.dart';
import '../providers/defender-provider.dart';
import '../widgets/navbar_widget.dart';
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
          child: Image.asset("assets/sausfc_logo.png", width: 55, height: 55),
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        centerTitle: true,
      ),
      drawer: NavberWidget(),
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: ListView(
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
                        fontSize: 20, color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.01,
                            horizontal: size.width * 0.06),
                        child: GridView.builder(
                          itemCount:
                              goalKeeperProvider.getGoalKeeperDataList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 430,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            var data1 =
                                goalKeeperProvider.getGoalKeeperDataList[index];
                            //Hive.box("profileDataBox").putAll({"playerIdM1": data1.playerId});
                            Hive.box("profileDataBox").putAll({"shortNameM1": data1.shortName});
                            Hive.box("profileDataBox").putAll({"playerNoM1": data1.playerNo});
                            Hive.box("profileDataBox").putAll({"imageUrlM1": data1.imageUrl});
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
                                          child: Image.network(
                                              "${Hive.box("profileDataBox").get("imageUrlM1").toString()}",
                                              fit: BoxFit.fill,
                                              ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PlayerProfile(
                                                      playerProfileModel: data1,
                                                    )));
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          '${Hive.box("profileDataBox").get("shortNameM1").toString()}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
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
                    ),
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
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                defenderProvider.getDefenderDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data2 =
                                  defenderProvider.getDefenderDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdM2": data2.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameM2": data2.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoM2": data2.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlM2": data2.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlM2").toString()}",
                                                fit: BoxFit.fill,
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
                                                            data2,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameM2").toString()}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
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
                      ),
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
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                midfieldProvider.getMidfieldDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data3 =
                                  midfieldProvider.getMidfieldDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdM3": data3.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameM3": data3.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoM3": data3.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlM3": data3.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlM3").toString()}",
                                                fit: BoxFit.fill,
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
                                                            data3,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameM3").toString()}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
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
                      ),
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
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.01,
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                forwardProvider.getForwardDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data4 =
                                  forwardProvider.getForwardDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdM4": data4.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameM4": data4.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoM4": data4.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlM4": data4.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlM4").toString()}",
                                                fit: BoxFit.fill,
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
                                                            data4,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameM4").toString()}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
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
                      ),
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
              color: Colors.white,
              height: 40,
              width: double.infinity,
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            FooterClass()
          ],
        ),
        tablet: ListView(
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
                            horizontal: size.width * 0.06),
                        child: GridView.builder(
                          itemCount:
                              goalKeeperProvider.getGoalKeeperDataList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 430,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            var data1 =
                                goalKeeperProvider.getGoalKeeperDataList[index];
                            //Hive.box("profileDataBox").putAll({"playerIdT1": data1.playerId});
                            Hive.box("profileDataBox").putAll({"shortNameT1": data1.shortName});
                            Hive.box("profileDataBox").putAll({"playerNoT1": data1.playerNo});
                            Hive.box("profileDataBox").putAll({"imageUrlT1": data1.imageUrl});

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
                                          child: Image.network(
                                              "${Hive.box("profileDataBox").get("imageUrlT1").toString()}",
                                              fit: BoxFit.fill,
                                              width: size.width * 0.2),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PlayerProfile(
                                                      playerProfileModel: data1,
                                                    )));
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          '${Hive.box("profileDataBox").get("shortNameT1").toString()}',
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
                    ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                defenderProvider.getDefenderDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data2 =
                                  defenderProvider.getDefenderDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdT2": data2.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameT2": data2.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoT2": data2.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlT2": data2.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlT2").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data2,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameT2").toString()}',
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
                      ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                midfieldProvider.getMidfieldDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data3 =
                                  midfieldProvider.getMidfieldDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdT3": data3.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameT3": data3.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoT3": data3.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlT3": data3.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlT3").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data3,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameT3").toString()}',
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
                      ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                forwardProvider.getForwardDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data4 =
                                  forwardProvider.getForwardDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdT4": data4.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameT4": data4.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoT4": data4.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlT4": data4.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlT4").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data4,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameT4").toString()}',
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
                      ),
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
              color: Colors.white,
              height: 40,
              width: double.infinity,
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            FooterClass()
          ],
        ),
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
                            horizontal: size.width * 0.06),
                        child: GridView.builder(
                          itemCount:
                              goalKeeperProvider.getGoalKeeperDataList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisExtent: 430,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            var data1 =
                                goalKeeperProvider.getGoalKeeperDataList[index];
                            //Hive.box("profileDataBox").putAll({"playerIdD1": data1.playerId});
                            Hive.box("profileDataBox").putAll({"shortNameD1": data1.shortName});
                            Hive.box("profileDataBox").putAll({"playerNoD1": data1.playerNo});
                            Hive.box("profileDataBox").putAll({"imageUrlD1": data1.imageUrl});
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
                                          child: Image.network(
                                              "${Hive.box("profileDataBox").get("imageUrlD1").toString()}",
                                              fit: BoxFit.fill,
                                              width: size.width * 0.2),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PlayerProfile(
                                                      playerProfileModel: data1,
                                                    )));
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          '${Hive.box("profileDataBox").get("shortNameD1").toString()}',
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
                    ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                defenderProvider.getDefenderDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data2 =
                                  defenderProvider.getDefenderDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdD2": data2.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameD2": data2.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoD2": data2.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlD2": data2.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlD2").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data2,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameD2").toString()}',
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
                      ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                midfieldProvider.getMidfieldDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data3 =
                                  midfieldProvider.getMidfieldDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdD3": data3.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameD3": data3.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoD3": data3.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlD3": data3.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlD3").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data3,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameD3").toString()}',
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
                      ),
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
                              horizontal: size.width * 0.04),
                          child: GridView.builder(
                            itemCount:
                                forwardProvider.getForwardDataList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 430,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                            ),
                            itemBuilder: (context, index) {
                              var data4 =
                                  forwardProvider.getForwardDataList[index];
                              //Hive.box("profileDataBox").putAll({"playerIdD4": data4.playerId});
                              Hive.box("profileDataBox").putAll({"shortNameD4": data4.shortName});
                              Hive.box("profileDataBox").putAll({"playerNoD4": data4.playerNo});
                              Hive.box("profileDataBox").putAll({"imageUrlD4": data4.imageUrl});
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
                                  child: Column(
                                    children: [
                                      InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Container(
                                            height: size.height * 0.4,
                                            child: Image.network(
                                                "${Hive.box("profileDataBox").get("imageUrlD4").toString()}",
                                                fit: BoxFit.fill,
                                                width: size.width * 0.2),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerProfile(
                                                        playerProfileModel:
                                                            data4,
                                                      )));
                                        },
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Expanded(
                                        child: SizedBox(
                                          child: Text(
                                            '${Hive.box("profileDataBox").get("shortNameD4").toString()}',
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
                      ),
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
              color: Colors.white,
              height: 40,
              width: double.infinity,
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
}
