import 'package:flutter/material.dart';

class AboutHelper extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;
  const AboutHelper({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.paddingWidth,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05, horizontal: 18),
            child: mobile,
          );
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 900) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.06, horizontal: paddingWidth),
            child: tablet,
          );
        } else {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01, horizontal: paddingWidth),
            child: desktop,
          );
        }
      },
    );
  }
}