import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/helpers/helper.dart';
import 'package:saus_fc/views/location.dart';
import 'package:saus_fc/views/our-methodology.dart';
import 'package:saus_fc/views/partner.dart';
import 'package:saus_fc/views/support-staff.dart';
import 'package:saus_fc/views/terms-and-conditions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../globals/app-assets.dart';
import '../globals/app-color.dart';

class FooterClass extends StatefulWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  State<FooterClass> createState() => _FooterClassState();
}

class _FooterClassState extends State<FooterClass> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text("SAU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    onTap: () async {
                      const url =
                          'https://www.sakarya.edu.tr/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("SUBU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    onTap: () async {
                      const url =
                          'https://www.subu.edu.tr'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BARIKA",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    onTap: () async {
                      const url =
                          'https://www.barikadrinks.com/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BETON",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    onTap: () async {
                      const url =
                          'https://hapjaebunarev.com/galeria/prodhimi-i-gypave-3/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  /*Text("MAVERCIK",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),*/
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: AppColors.redColor,
                height: 3.0,
                width: size.width,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(""),
                  Text("SAUS FC",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  Text("SERVICES",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  Text("FOLLOW US",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Image.asset("assets/sausfc_logo.png",
                        width: 30, height: 30),
                    onTap: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          child: Text("SAUSFC.COM",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("SUPPORT STAFF",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupportStaff()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("PARTNER",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Partners()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("LOCATION",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LocationPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          child: Text("ABOUT US",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("OUR\n METHODOLOGY",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*Text("TOURNAMENT",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 8.0)),*/
                        /* SizedBox(
                          height: 10,
                        ),*/
                        /*Text("ACADEMY LIFE",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 8.0)),*/
                        /*SizedBox(
                          height: 10,
                        ),*/
                        InkWell(
                          child: Text("TERMS AND\n CONDITIONS",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 8.0)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TermsAndConditions()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            /*Ink(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.themeColor, width: 2.0),
                                color: AppColors.bgColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: InkWell(
                                child: Image.asset(
                                  AppAssets.facebook,
                                  width: 10,
                                  height: 12,
                                  color: AppColors.themeColor,
                                  // fit: BoxFit.fill,
                                ),
                                onTap: (){

                                },
                              ),
                            ),*/
                            Ink(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.themeColor, width: 2.0),
                                color: AppColors.bgColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: InkWell(
                                child: Image.asset(
                                  AppAssets.insta,
                                  width: 10,
                                  height: 12,
                                  color: AppColors.themeColor,
                                  // fit: BoxFit.fill,
                                ),
                                onTap: () async {
                                  const url =
                                      'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                                  if (await canLaunch(url)) {
                                    await launch(url, forceSafariVC: false);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              ),
                            ),
                            Ink(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.themeColor, width: 2.0),
                                color: AppColors.bgColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: InkWell(
                                child: Image.asset(
                                  AppAssets.twitter,
                                  width: 10,
                                  height: 12,
                                  color: AppColors.themeColor,
                                  // fit: BoxFit.fill,
                                ),
                                onTap: () async {
                                  const url = ''; // Lien que vous voulez ouvrir
                                  if (await canLaunch(url)) {
                                    await launch(url, forceSafariVC: false);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Ink(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.themeColor, width: 2.0),
                                color: AppColors.bgColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: InkWell(
                                child: Image.asset(
                                  AppAssets.linkedIn,
                                  width: 10,
                                  height: 12,
                                  color: AppColors.themeColor,
                                  // fit: BoxFit.fill,
                                ),
                                onTap: () async {
                                  const url =
                                      'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                                  if (await canLaunch(url)) {
                                    await launch(url, forceSafariVC: false);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              ),
                            ),
                            Ink(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.themeColor, width: 2.0),
                                color: AppColors.bgColor,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(6),
                              child: InkWell(
                                child: Image.asset(
                                  AppAssets.github,
                                  width: 10,
                                  height: 12,
                                  color: AppColors.themeColor,
                                  // fit: BoxFit.fill,
                                ),
                                onTap: () async {
                                  const url =
                                      'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                                  if (await canLaunch(url)) {
                                    await launch(url, forceSafariVC: false);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '© Copyright Aba Mele.',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 11),
                  ),
                  SizedBox(
                      child: Row(
                    children: [
                      Text('Designed by',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 11)),
                      SizedBox(
                        width: 3.0,
                      ),
                      Image.asset(
                        "assets/sausfc_logo.png",
                        width: 15,
                        height: 15,
                      ),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
      tablet: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text("SAU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.sakarya.edu.tr/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("SUBU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.subu.edu.tr'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BARIKA",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.barikadrinks.com/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BETON",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://hapjaebunarev.com/galeria/prodhimi-i-gypave-3/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  /*Text("MAVERCIK",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 36)),*/
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: AppColors.redColor,
                height: 3.0,
                width: size.width,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Image.asset("assets/sausfc_logo.png",
                        width: 70, height: 70),
                    onTap: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("SAUS FC",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 28)),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("SAUSFC.COM",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () async {
                            const url =
                                'https://sausfc-4d028.web.app/'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("SUPPORT STAFF",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupportStaff()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("PARTNER",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Partners()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("LOCATION",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LocationPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("SERVICES",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 28)),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("ABOUT US",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("OUR METHODOLOGY",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*Text("TOURNAMENT",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("ACADEMY LIFE",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),*/
                        InkWell(
                          child: Text("TERMS AND CONDITIONS",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TermsAndConditions()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("FOLLOW US",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          /*Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.facebook,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: (){},
                            ),
                          ),*/
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.insta,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.twitter,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url = ''; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.linkedIn,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.github,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '© Copyright Aba Mele.',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                      child: Row(
                    children: [
                      Text('Designed by',
                          style: TextStyle(color: Colors.blueGrey)),
                      SizedBox(
                        width: 3.0,
                      ),
                      Image.asset(
                        "assets/sausfc_logo.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
      desktop: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text("SAU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.sakarya.edu.tr/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("SUBU",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.subu.edu.tr'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BARIKA",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://www.barikadrinks.com/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  InkWell(
                    child: Text("BETON",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 36)),
                    onTap: () async {
                      const url =
                          'https://hapjaebunarev.com/galeria/prodhimi-i-gypave-3/'; // Lien que vous voulez ouvrir
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                  /*Text("MAVERCIK",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 36)),*/
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: AppColors.redColor,
                height: 3.0,
                width: size.width,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Image.asset("assets/sausfc_logo.png",
                        width: 70, height: 70),
                    onTap: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("SAUS FC",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 28)),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("SAUSFC.COM",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () async {
                            const url =
                                'https://sausfc-4d028.web.app/'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("SUPPORT STAFF",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupportStaff()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("PARTNER",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Partners()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("LOCATION",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LocationPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("SERVICES",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 28)),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("ABOUT US",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          child: Text("OUR METHODOLOGY",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OurMethodology()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*Text("TOURNAMENT",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("ACADEMY LIFE",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 18)),
                        SizedBox(
                          height: 10,
                        ),*/
                        InkWell(
                          child: Text("TERMS AND CONDITIONS",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 18)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TermsAndConditions()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text("FOLLOW US",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          /*Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.facebook,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    ''; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),*/
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.insta,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://www.instagram.com/saus_f.c/'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.twitter,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url = ''; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.linkedIn,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://www.linkedin.com/in/aba-mele-maloum-oumar-245a0b1a3/'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          ),
                          Ink(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.themeColor, width: 2.0),
                              color: AppColors.bgColor,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(6),
                            child: InkWell(
                              child: Image.asset(
                                AppAssets.github,
                                width: 10,
                                height: 12,
                                color: AppColors.themeColor,
                                // fit: BoxFit.fill,
                              ),
                              onTap: () async {
                                const url =
                                    'https://github.com/abamele?tab=repositories'; // Lien que vous voulez ouvrir
                                if (await canLaunch(url)) {
                                  await launch(url, forceSafariVC: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("")
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '© Copyright Aba Mele.',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                      child: Row(
                    children: [
                      Text('Designed by',
                          style: TextStyle(color: Colors.blueGrey)),
                      SizedBox(
                        width: 3.0,
                      ),
                      Image.asset(
                        "assets/sausfc_logo.png",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.nColor,
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
