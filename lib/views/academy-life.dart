import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saus_fc/providers/academy-life-bursa.dart';
import 'package:saus_fc/providers/academy-life-eskisehir.dart';
import 'package:saus_fc/providers/academy-life-kocaeli-provider.dart';

import 'package:saus_fc/views/bursa-life.dart';
import 'package:saus_fc/views/eskisehir-life.dart';
import 'package:provider/provider.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';
import 'kocaeli-life.dart';

class AcademyLife extends StatefulWidget {
  const AcademyLife({Key? key}) : super(key: key);

  @override
  State<AcademyLife> createState() => _AcademyLifeState();
}

class _AcademyLifeState extends State<AcademyLife> {
  final onH0verEffect = Matrix4.identity()..scale(1.0);
  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    AcademyLifeKocaeliProvider academyLifeKocaeliProvider =
        Provider.of(context);
    academyLifeKocaeliProvider.getAcademyLifeKocaeliData();
    AcademyLifeEskisehirProvider academyLifeEskisehirProvider =
        Provider.of(context);
    academyLifeEskisehirProvider.getAcademyLifeEskisehirData();
    AcademyLifeBursaProvider academyLifeBursaProvider = Provider.of(context);
    academyLifeBursaProvider.getAcademyLifeBursaData();

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
                text: 'ACADEMY LIFE ',
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
          Constants.sizedBox(height: 35.0),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  academyLifeKocaeliProvider.getAcademyLifeKocaeliImage.length,
              itemBuilder: (context, index) {
                final data1 = academyLifeKocaeliProvider
                    .getAcademyLifeKocaeliImage[index];
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(""),
                      Constants.sizedBox(height: 15.0),
                      InkWell(
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.3,
                            width: double.infinity,
                            child: Image.network(
                              "${data1.image}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KocaeliLife(
                                        academyLifeModel: data1,
                                      )));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("${data1.city}",
                          style: AppTextStyles.normalStyle(
                              fontSize: 24, color: Colors.black))
                    ],
                  ),
                );
              }),
          Constants.sizedBox(height: 25.0),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: academyLifeEskisehirProvider
                  .getAcademyLifeEskisehirImage.length,
              itemBuilder: (context, index) {
                final data2 =
                academyLifeEskisehirProvider
                    .getAcademyLifeEskisehirImage[index];
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(""),
                      Constants.sizedBox(height: 15.0),
                      InkWell(
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.3,
                            width: double.infinity,
                            child: Image.network(
                              "${data2.image}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EskisehirLife(
                                        academyLifeModel: data2,
                                      )));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("${data2.city}",
                          style: AppTextStyles.normalStyle(
                              fontSize: 24, color: Colors.black))
                    ],
                  ),
                );
              }),
          Constants.sizedBox(height: 25.0),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  academyLifeBursaProvider.getAcademyLifeBursaImage.length,
              itemBuilder: (context, index) {
                final data3 =
                    academyLifeBursaProvider.getAcademyLifeBursaImage[index];
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(""),
                      Constants.sizedBox(height: 15.0),
                      InkWell(
                        child: ClipRRect(
                          //borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: size.height * 0.3,
                            width: double.infinity,
                            child: Image.network(
                              "${data3.image}",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BursaLife(
                                        academyLifeModel: data3,
                                      )));
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("${data3.city}",
                          style: AppTextStyles.normalStyle(
                              fontSize: 24, color: Colors.black))
                    ],
                  ),
                );
              }),
          SizedBox(
            height: 40,
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
          Constants.sizedBox(height: 35.0),
          Row(
            children: [
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeKocaeliProvider
                        .getAcademyLifeKocaeliImage.length,
                    itemBuilder: (context, index) {
                      final data1 = academyLifeKocaeliProvider
                          .getAcademyLifeKocaeliImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data1.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KocaeliLife(
                                              academyLifeModel: data1,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data1.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeEskisehirProvider
                        .getAcademyLifeEskisehirImage.length,
                    itemBuilder: (context, index) {
                      final data2 = academyLifeEskisehirProvider
                          .getAcademyLifeEskisehirImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data2.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EskisehirLife(
                                              academyLifeModel: data2,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data2.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeBursaProvider
                        .getAcademyLifeBursaImage.length,
                    itemBuilder: (context, index) {
                      final data1 = academyLifeBursaProvider
                          .getAcademyLifeBursaImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data1.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BursaLife(
                                              academyLifeModel: data1,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data1.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
          SizedBox(
            height: 40,
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
          Constants.sizedBox(height: 35.0),
          Row(
            children: [
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeKocaeliProvider
                        .getAcademyLifeKocaeliImage.length,
                    itemBuilder: (context, index) {
                      final data1 = academyLifeKocaeliProvider
                          .getAcademyLifeKocaeliImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data1.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => KocaeliLife(
                                              academyLifeModel: data1,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data1.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeEskisehirProvider
                        .getAcademyLifeEskisehirImage.length,
                    itemBuilder: (context, index) {
                      final data2 = academyLifeEskisehirProvider
                          .getAcademyLifeEskisehirImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data2.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EskisehirLife(
                                              academyLifeModel: data2,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data2.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: academyLifeBursaProvider
                        .getAcademyLifeBursaImage.length,
                    itemBuilder: (context, index) {
                      final data3 = academyLifeBursaProvider
                          .getAcademyLifeBursaImage[index];
                      return Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(""),
                            Constants.sizedBox(height: 15.0),
                            InkWell(
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  height: size.height * 0.3,
                                  width: double.infinity,
                                  child: Image.network(
                                    "${data3.image}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BursaLife(
                                              academyLifeModel: data3,
                                            )));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${data3.city}",
                                style: AppTextStyles.normalStyle(
                                    fontSize: 24, color: Colors.black))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text("")
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'ACADEMY LIFE ',
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
