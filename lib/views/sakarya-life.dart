import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/helpers/helper.dart';
import 'package:saus_fc/providers/sakarya-gallery-provider.dart';
import 'package:saus_fc/views/footer.dart';

import '../globals/app-styles.dart';
import '../widgets/navbar_widget.dart';

class SakaryaLife extends StatefulWidget {
  const SakaryaLife({super.key});

  @override
  State<SakaryaLife> createState() => _SakaryaLifeState();
}

class _SakaryaLifeState extends State<SakaryaLife> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SakaryGalleryProvider sakaryGalleryProvider = Provider.of(context);
    sakaryGalleryProvider.getSakaryaGalleryData();
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
      body: ListView(
        children: [
          HelperClass(
            mobile: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "SAKARYA LIFE",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "IMAGES GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.02),
                    child: GridView.builder(
                      itemCount: sakaryGalleryProvider.getSakaryaGalleryDataList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 200,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final data= sakaryGalleryProvider.getSakaryaGalleryDataList[index];
                        return FadeInUpBig(
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
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  child: Image.network(
                                      "${Hive.box("galleryDataBox").get("imageGallery").toString()}",
                                      fit: BoxFit.fill,
                                      height: size.height * 0.35),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "VIDEOS GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.02),
                    child: GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 280,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        //var image = images[index];
                        return FadeInUpBig(
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
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image:
                                        AssetImage("assets/work1.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
            tablet: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "SAKARYA LIFE",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "IMAGES GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.02),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: sakaryGalleryProvider.getSakaryaGalleryDataList.length,
                        itemBuilder: (context, index) {
                          final data= sakaryGalleryProvider.getSakaryaGalleryDataList[index];
                          return GridView.builder(
                            itemCount: data.imageGallery!.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 200,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              final imageGallery = data.imageGallery![index];
                              Hive.box("galleryDataBox").putAll({"imageGallery": imageGallery});
                              //print(".............${imageGallery.imageGallery}");
                              return FadeInUpBig(
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
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 8, right: 8),
                                        child: Image.network(
                                            "${Hive.box("galleryDataBox").get("imageGallery").toString()}",
                                            fit: BoxFit.fill,
                                            height: size.height * 0.35),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "VIDEOS GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.02),
                    child: GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 280,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        //var image = images[index];
                        return FadeInUpBig(
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
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image:
                                        AssetImage("assets/work1.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
            desktop: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "KOCAELİ LIFE",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 46, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "IMAGES GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: sakaryGalleryProvider.getSakaryaGalleryDataList.length,
                        itemBuilder: (context, index) {
                          final data= sakaryGalleryProvider.getSakaryaGalleryDataList[index];
                          return GridView.builder(
                            itemCount: data.imageGallery!.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 200,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              final imageGallery = data.imageGallery![index];
                              Hive.box("galleryDataBox").putAll({"imageGallery": imageGallery});
                              //print(".............${imageGallery.imageGallery}");
                              return FadeInUpBig(
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
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 8, right: 8),
                                        child: Image.network(
                                            "${Hive.box("galleryDataBox").get("imageGallery").toString()}",
                                            fit: BoxFit.fill,
                                            height: size.height * 0.35),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "VIDEOS GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 46, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.02),
                    child: GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 280,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        //var image = images[index];
                        return FadeInUpBig(
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
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image:
                                        AssetImage("assets/work1.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ), paddingWidth: size.width * 0.04,
            bgColor: AppColors.bgColor2,
          ),
          Container(
            color: Colors.white,
            height: 70,
            width: double.infinity,
          ),
          FooterClass()
        ],
      ),
    );
  }
}
