import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/views/footer.dart';
import 'package:saus_fc/helpers/single-helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../globals/app-constant.dart';
import '../widgets/navbar_widget.dart';

class Partners extends StatefulWidget {
  const Partners({super.key});

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
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
                left: 8.0,
                right: 8.0,
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
                        "PARTNERS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AspectRatio(
                      aspectRatio: 2,
                      child: Image.asset(
                        "assets/stadium.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        "SAKARYA UNIVERSITY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    Constants.sizedBox(height: 10.0),
                    Container(
                        child: Image.asset(
                      "assets/sauLogo.png",
                      height: 250,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Considered one of the largest universities in Turkey with more than 85,000 students,'
                        '[8] Sakarya University has very high research activity and its comprehensive graduate program'
                        'offers doctoral degrees in Science, Technology, Engineering, and Humanities,'
                        'as well as professional degrees in business, medicine, law, nursing, social work and dentistry.'
                        'It hosts five different institutes: Educational Sciences, Natural Sciences, Health Sciences,'
                        'Social Sciences, and Middle East Institute.\n'
                        'In Turkey, Sakarya University is the first and only state university receiving the ISO-2002 Quality Certificate and the EFQM Excellence Quality Certificate of Competency Level',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    InkWell(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.redColor),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.redColor,
                          )
                        ],
                      ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 30.0, right: 10),
                      child: Text(
                        "SAKARYA UNIVERSITY OF APPLIED SCIENCES.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: Image.asset(
                      "assets/subulogo.png",
                      height: 250,
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Sakarya University of Applied Sciences (Turkish: Sakarya Uygulamalı Bilimler Üniversitesi),'
                        'was established with the Decree Law published in the Official Gazette dated 18 May 2018.'
                        'The school has 1 institute, 8 faculties, 1 college and 15 vocational schools.'
                        'These units were affiliated to Sakarya University before the university was established.'
                        'In addition, the University of Applied Sciences is one of two universities in Turkey.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    InkWell(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.redColor),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.redColor,
                          )
                        ],
                      ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "BARIKA DRINKS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "assets/barikalogo.jpg",
                        height: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Based on the principle of education, sport and entertainment,'
                        'we provide varieties of BARIKA gifts such as t-shirts, caps, pens,'
                        'bags and flags to facilitate our customers/partners in promoting the brand.'
                        'For our loyal customers we offer several flavors of BARIKA'
                        'such as Barika black 13bx and 5bs, Barika white in sugar,'
                        'Barika tropical mango (blue and green) and also Barika 4G'
                        'which is the basic blend of grape, ginger, guarana and grapefruit.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    InkWell(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.redColor),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.redColor,
                          )
                        ],
                      ),
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
                    Constants.sizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, bottom: 30.0, right: 10),
                      child: Text(
                        "BETON",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    Container(
                        child: Image.asset(
                      "assets/beton logo.jpeg",
                      height: 250,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Based on the principle of education, sport and entertainment,'
                        'we provide varieties of BARIKA gifts such as t-shirts, caps, pens,'
                        'bags and flags to facilitate our customers/partners in promoting the brand.'
                        'For our loyal customers we offer several flavors of BARIKA'
                        'such as Barika black 13bx and 5bs, Barika white in sugar,'
                        'Barika tropical mango (blue and green) and also Barika 4G'
                        'which is the basic blend of grape, ginger, guarana and grapefruit.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Constants.sizedBox(height: 20.0),
                    InkWell(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.redColor),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.redColor,
                          )
                        ],
                      ),
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
                    Constants.sizedBox(height: 40.0),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                              "assets/barikalogo.jpg",
                              height: 250,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                "MAVERCIK TEAM\n ATHLETIC\n PERFORMANCE CO.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 46),
                              ),
                            ),
                            Text(
                              'Based on the principle of education, \nsport and entertainment, \n'
                                  'we provide varieties of BARIKA gifts \nsuch as t-shirts, caps, pens, \n'
                                  'bags and flags to facilitate \nour customers/partners in promoting the brand.\n'
                                  'For our loyal customers we offer \nseveral flavors of BARIKA \n'
                                  'such as Barika black 13bx and 5bs, \nBarika white in sugar, \n'
                                  'Barika tropical mango (blue and green) \nand also Barika 4G \n'
                                  'which is the basic blend of grape, ginger, \nguarana and grapefruit. \n',
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Constants.sizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),*/
                  ],
                ),
              ),
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
                        "PARTNERS",
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
                        "assets/stadium.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/sauLogo.png",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "SAKARYA UNIVERSITY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Considered one of the largest universities in Turkey with more than 85,000 students,'
                                '[8] Sakarya University has very high research activity and its comprehensive graduate program'
                                'offers doctoral degrees in Science, Technology, Engineering, and Humanities,'
                                'as well as professional degrees in business, medicine, law, nursing, social work and dentistry.'
                                'It hosts five different institutes: Educational Sciences, Natural Sciences, Health Sciences,'
                                'Social Sciences, and Middle East Institute.\n'
                                'In Turkey, Sakarya University is the first and only state university receiving the ISO-2002 Quality Certificate and the EFQM Excellence Quality Certificate of Competency Level',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/subulogo.png",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "SAKARYA UNIVERSITY OF APPLIED SCIENCES.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Sakarya University of Applied Sciences (Turkish: Sakarya Uygulamalı Bilimler Üniversitesi),'
                                'was established with the Decree Law published in the Official Gazette dated 18 May 2018.'
                                'The school has 1 institute, 8 faculties, 1 college and 15 vocational schools.'
                                'These units were affiliated to Sakarya University before the university was established.'
                                'In addition, the University of Applied Sciences is one of two universities in Turkey.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/barikalogo.jpg",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "BARIKA DRINKS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Based on the principle of education, sport and entertainment,'
                                'we provide varieties of BARIKA gifts such as t-shirts, caps, pens,'
                                'bags and flags to facilitate our customers/partners in promoting the brand.'
                                'For our loyal customers we offer several flavors of BARIKA'
                                'such as Barika black 13bx and 5bs, Barika white in sugar,'
                                'Barika tropical mango (blue and green) and also Barika 4G'
                                'which is the basic blend of grape, ginger, guarana and grapefruit.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/beton logo.jpeg",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "BETON",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Komplast Group owns the production line which deals with the production of PVC Pipes with a high quality and world standards. The professional framework with the experience we have made our products to be the most sought after in the market.'
                                'Production of pipes for the installation of water pipes,'
                                ' Production of connecting elements, Type KM,'
                                'Production of polyethylene pipes Pehdpe -80,'
                                'Production of pipes and connecting parts for road and domestic sewerage, Type KK and'
                                'Production of PVC pipes for wells - threaded water wells full and filter.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                  ],
                ),
              ),
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
                        "PARTNERS",
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
                        "assets/stadium.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Constants.sizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/sauLogo.png",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "SAKARYA UNIVERSITY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Considered one of the largest universities in Turkey with more than 85,000 students,'
                                '[8] Sakarya University has very high research activity and its comprehensive graduate program'
                                'offers doctoral degrees in Science, Technology, Engineering, and Humanities,'
                                'as well as professional degrees in business, medicine, law, nursing, social work and dentistry.'
                                'It hosts five different institutes: Educational Sciences, Natural Sciences, Health Sciences,'
                                'Social Sciences, and Middle East Institute.\n'
                                'In Turkey, Sakarya University is the first and only state university receiving the ISO-2002 Quality Certificate and the EFQM Excellence Quality Certificate of Competency Level',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/subulogo.png",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "SAKARYA UNIVERSITY OF APPLIED SCIENCES.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Sakarya University of Applied Sciences (Turkish: Sakarya Uygulamalı Bilimler Üniversitesi),'
                                'was established with the Decree Law published in the Official Gazette dated 18 May 2018.'
                                'The school has 1 institute, 8 faculties, 1 college and 15 vocational schools.'
                                'These units were affiliated to Sakarya University before the university was established.'
                                'In addition, the University of Applied Sciences is one of two universities in Turkey.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/barikalogo.jpg",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "BARIKA DRINKS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Based on the principle of education, sport and entertainment,'
                                'we provide varieties of BARIKA gifts such as t-shirts, caps, pens,'
                                'bags and flags to facilitate our customers/partners in promoting the brand.'
                                'For our loyal customers we offer several flavors of BARIKA'
                                'such as Barika black 13bx and 5bs, Barika white in sugar,'
                                'Barika tropical mango (blue and green) and also Barika 4G'
                                'which is the basic blend of grape, ginger, guarana and grapefruit.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                              child: Image.asset(
                            "assets/beton logo.jpeg",
                            height: 250,
                          )),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30.0),
                                child: Text(
                                  "BETON",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 46),
                                ),
                              ),
                              Text(
                                'Komplast Group owns the production line which deals with the production of PVC Pipes with a high quality and world standards. The professional framework with the experience we have made our products to be the most sought after in the market.'
                                'Production of pipes for the installation of water pipes,'
                                ' Production of connecting elements, Type KM,'
                                'Production of polyethylene pipes Pehdpe -80,'
                                'Production of pipes and connecting parts for road and domestic sewerage, Type KK and'
                                'Production of PVC pipes for wells - threaded water wells full and filter.',
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Constants.sizedBox(height: 20.0),
                              InkWell(
                                child: Row(
                                  children: [
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: AppColors.redColor),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.redColor,
                                    )
                                  ],
                                ),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 70,
              width: double.infinity,
            ),
            FooterClass()
          ],
        ),
        //paddingWidth: size.width * 0.04,
      ),
    );
  }
}
