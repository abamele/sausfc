import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:saus_fc/views/players.dart';
import 'package:saus_fc/views/services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../providers/scroll_provider.dart';
import '../widgets/navbar_widget.dart';
import 'academy-life.dart';
import 'contact-us.dart';
import 'footer.dart';
import 'home-page.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({Key? key}) : super(key: key);

  @override
  _MainDashBoardState createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'HOME',
    'ACADEMY LIFE',
    'SERVICES',
    'PLAYERS',
    'SUBSCRIBE',
  ];

  final ValueNotifier<int> selectButton = ValueNotifier<int>(0);
  var menuIndex = 0;

  final screensList = <Widget>[
    HomePage(),
    AcademyLife(),
    Services(),
    Players(),
    ContactUs(),
    Container(
      height: 70,
      width: double.infinity,
      color: Colors.white,
    ),
    FooterClass(),
  ];

  /*Future scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuIndex = index;
      });
    });
  }*/

  final yourScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      drawer: NavberWidget(),
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        //toolbarHeight: 90,
        //titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SizedBox(
              height: 30,
              child: ListView.separated(
                itemCount: menuItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) =>
                    Constants.sizedBox(width: 2.0),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        scrollProvider.jumpTo(index);
                        //scrollTo(index: index);
                      },
                      borderRadius: BorderRadius.circular(100),
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            scrollProvider.menuIndex = index;
                          } else {
                            scrollProvider.menuIndex = 0;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        width:
                            scrollProvider.menuIndex == index ? 40 : 40,
                        duration: const Duration(milliseconds: 200),
                        transform: scrollProvider.menuIndex == index
                            ? onMenuHover
                            : null,
                        child: Text(
                          menuItems[index],
                          style: TextStyle(
                              color: scrollProvider.menuIndex == index
                                  ? AppColors.themeColor
                                  : AppColors.white,
                              fontSize: 5.0),
                        ),
                      ));
                },
              ),
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text("SAUS FC", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                //Image.asset("assets/logoweb.png", width: 60, height: 60,),
                //const Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) =>
                        Constants.sizedBox(width: 2.0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          scrollProvider.jumpTo(index);
                          //scrollTo(index: index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              scrollProvider.menuIndex = index;
                            } else {
                              scrollProvider.menuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(index,
                            scrollProvider.menuIndex == index ? true : false),
                      );
                    },
                  ),
                ),
                //const Spacer(),
              ],
            );
          }
        }),
      ),
      body: ScrollablePositionedList.builder(
        shrinkWrap: true,
        //physics: ClampingScrollPhysics().applyTo(AlwaysScrollableScrollPhysics()),
        itemCount: screensList.length,
        itemScrollController: scrollProvider.itemScrollController,
        itemPositionsListener: scrollProvider.itemPositionsListener,
        scrollOffsetListener: scrollProvider.scrollOffsetListener,
        itemBuilder: (context, index) {
          return screensList[index];
        },
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 110 : 110,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: TextStyle(
            color: hover ? AppColors.themeColor : AppColors.white, fontWeight: FontWeight.w600, fontSize: 14),
      ),
    );
  }

  Widget menuTextWidget(int index, String txt) {
    return ValueListenableBuilder(
      valueListenable: selectButton,
      builder: (BuildContext context, int value, Widget? child) {
        return Column(
          children: [
            TextButton(
              child: Text(
                '${txt}',
                style: TextStyle(
                    color:
                        value == index ? AppColors.themeColor : AppColors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  selectButton.value = index;
                });
              },
            ),
          ],
        );
      },
    );
  }
}
