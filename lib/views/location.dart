import 'package:flutter/material.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/views/footer.dart';
import 'package:saus_fc/helpers/single-helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../globals/app-constant.dart';
import '../widgets/navbar_widget.dart';
import 'dashboard.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
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
        /*MaterialButton(
          color: AppColors.themeColor,
          splashColor: AppColors.lawGreen,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
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
                style: AppTextStyles.headerTextStyle(color: Colors.black),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainDashBoard()));
          },
        ),*/
      ),
      drawer: NavberWidget(),
      body: SingleHelper(
        bgColor: AppColors.bgColor,
        mobile: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 8.0,
              ),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "LOCATION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2.5,
                      child: Image.asset(
                        "assets/harita.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('👇', style: TextStyle(fontSize: 38),),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                        child: Text(
                            "Sakarya Üniversitesi Spor Bilimleri Fakültesi, Kemalpaşa, 54050 Serdivan/Sakarya",
                            style: TextStyle(fontSize: 14, color: Colors.blue)),
                        onTap: () {
                          setState(() async {
                            const url =
                                'https://maps.app.goo.gl/xezcSxgGyKMm5jqX6'; // Lien que vous voulez ouvrir
                            if (await canLaunch(url)) {
                              await launch(url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $url';
                            }
                          });
                        },
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Text("")
                  ],
                ),
              ),
            ),
            Constants.sizedBox(height: 20.0),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 8.0,
              ),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "LOCATION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 46),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2.5,
                      child: Image.asset(
                        "assets/harita.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('👇', style: TextStyle(fontSize: 38),),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                        child: Text(
                            "Sakarya Üniversitesi Spor Bilimleri Fakültesi, Kemalpaşa, 54050 Serdivan/Sakarya",
                            style: TextStyle(fontSize: 24, color: Colors.blue)),
                        onTap: () {
                          setState(() {
                            setState(() async {
                              const url =
                                  'https://maps.app.goo.gl/xezcSxgGyKMm5jqX6'; // Lien que vous voulez ouvrir
                              if (await canLaunch(url)) {
                                await launch(url, forceSafariVC: false);
                              } else {
                                throw 'Could not launch $url';
                              }
                            });
                          });
                        },
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Text("")
                  ],
                ),
              ),
            ),
            Constants.sizedBox(height: 20.0),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 110,
                right: 110,
                top: 8.0,
              ),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "LOCATION",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 46),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2.5,
                      child: Image.asset(
                        "assets/harita.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('👇', style: TextStyle(fontSize: 38),),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                        child: Text(
                            "Sakarya Üniversitesi Spor Bilimleri Fakültesi, Kemalpaşa, 54050 Serdivan/Sakarya",
                            style: TextStyle(fontSize: 24, color: Colors.blue)),
                        onTap: () {
                          setState(() {
                            setState(() async {
                              const url =
                                  'https://maps.app.goo.gl/xezcSxgGyKMm5jqX6'; // Lien que vous voulez ouvrir
                              if (await canLaunch(url)) {
                                await launch(url, forceSafariVC: false);
                              } else {
                                throw 'Could not launch $url';
                              }
                            });
                          });
                        },
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    Text("")
                  ],
                ),
              ),
            ),
            Constants.sizedBox(height: 20.0),
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
