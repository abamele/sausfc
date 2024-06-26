import 'package:flutter/material.dart';

class PlayerProfileResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  //final Widget betweenDesktopTablet;
  final Widget desktop;

  const PlayerProfileResponsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    //required this.betweenDesktopTablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 900 &&
          MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 900 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile;
        }
        // If width it less then 900 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1134) {
          return tablet;
        }
        /*else if(constraints.maxWidth>= 900 && constraints.maxWidth < 1137){
          return betweenDesktopTablet;
        }*/
        // Or less then that we called it mobile
        else {
          return desktop;
        }
      },
    );
  }
}