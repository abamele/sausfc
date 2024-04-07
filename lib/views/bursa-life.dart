import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:saus_fc/globals/app-color.dart';
import 'package:saus_fc/helpers/helper.dart';
import 'package:saus_fc/providers/bursa-gallery-provider.dart';
import 'package:saus_fc/views/footer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../globals/app-styles.dart';
import '../models/academy-life-model.dart';
import '../widgets/navbar_widget.dart';

class BursaLife extends StatefulWidget {
      BursaLife({super.key, required this.academyLifeModel});
      AcademyLifeModel academyLifeModel;
  @override
  State<BursaLife> createState() => _BursaLifeState();
}

class _BursaLifeState extends State<BursaLife> {
  List<String> _videoIds = [
    'Ggam4fGI7RQ',
    'JPTgN2qxAeg',
    'NcoGNTGCt_k',
    'dE3wDp6LcBQ',
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    BursaGalleryProvider bursaGalleryProvider = Provider.of(context);
    bursaGalleryProvider.getBursaGalleryData();
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
                      "BURSA LIFE",
                      style: AppTextStyles.montserratStyle(
                          fontSize: 26, color: Colors.white),
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
                        fontSize: 20, color: Colors.white),
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
                      itemCount: bursaGalleryProvider.getBursaGalleryDataList.length,
                      itemBuilder: (context, index) {
                        final data= bursaGalleryProvider.getBursaGalleryDataList[index];
                        return GridView.builder(
                          itemCount: data.imageGallery!.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 200,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            final imageGallery = data.imageGallery![index];
                            return FadeInUpBig(
                              duration: const Duration(milliseconds: 1600),
                              child: InkWell(
                                onTap: () {
                                  Hive.box("galleryDataBox").putAll({"imageGallery": imageGallery});
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Dialog(
                                          child: InteractiveViewer(
                                            child: Image.network("${Hive.box("galleryDataBox").get("imageGallery").toString()}"),
                                            boundaryMargin: EdgeInsets.all(50), // Margin around the zoomable area
                                            minScale: 0.5, // Minimum scale (zoom out)
                                            maxScale: 2.0, // Maximum scale (zoom in)
                                            scaleEnabled: false, // Enable scaling
                                            panEnabled: false, // Enable panning
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8, right: 8),
                                      child: Image.network(
                                          imageGallery,
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /*Center(
                  child: Text(
                    "VIDEOS GALLERY",
                    style: AppTextStyles.montserratStyle(
                        fontSize: 20, color: Colors.white),
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
                        itemCount: _videoIds.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisExtent: 250,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: YoutubePlayer(
                              //aspectRatio: 16 / 9,
                              enableFullScreenOnVerticalDrag: false,
                              controller: YoutubePlayerController.fromVideoId(
                                videoId: _videoIds[index],
                                autoPlay: false,
                                params: const YoutubePlayerParams(showFullscreenButton: true),
                              )
                                ..setFullScreenListener(
                                      (_) async {
                                    final videoData = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).videoData;
                                    final startSeconds = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).currentTime;

                                    final currentTime = await FullscreenYoutubePlayer.launch(
                                      context,
                                      videoId: videoData.videoId,
                                      startSeconds: startSeconds,
                                    );

                                    if (currentTime != null) {
                                      YoutubePlayerController.fromVideoId(
                                        videoId: _videoIds[index],
                                        autoPlay: false,
                                        params: const YoutubePlayerParams(showFullscreenButton: true),
                                      ).seekTo(seconds: currentTime);
                                    }
                                  },
                                ),
                            ),
                          );
                        }
                    ),),*/
              ],
            ),
            tablet: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "BURSA LIFE",
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
                      itemCount: bursaGalleryProvider.getBursaGalleryDataList.length,
                      itemBuilder: (context, index) {
                        final data= bursaGalleryProvider.getBursaGalleryDataList[index];
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
                            return FadeInUpBig(
                              duration: const Duration(milliseconds: 1600),
                              child: InkWell(
                                onTap: () {
                                  Hive.box("galleryDataBox").putAll({"imageGallery": imageGallery});
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Dialog(
                                          child: InteractiveViewer(
                                            child: Image.network("${Hive.box("galleryDataBox").get("imageGallery").toString()}"),
                                            boundaryMargin: EdgeInsets.all(50), // Margin around the zoomable area
                                            minScale: 0.5, // Minimum scale (zoom out)
                                            maxScale: 2.0, // Maximum scale (zoom in)
                                            scaleEnabled: false, // Enable scaling
                                            panEnabled: false, // Enable panning
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8, right: 8),
                                      child: Image.network(
                                          imageGallery,
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /*Center(
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
                        itemCount: _videoIds.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 350,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: YoutubePlayer(
                              //aspectRatio: 16 / 9,
                              enableFullScreenOnVerticalDrag: false,
                              controller: YoutubePlayerController.fromVideoId(
                                videoId: _videoIds[index],
                                autoPlay: false,
                                params: const YoutubePlayerParams(showFullscreenButton: true),
                              )
                                ..setFullScreenListener(
                                      (_) async {
                                    final videoData = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).videoData;
                                    final startSeconds = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).currentTime;

                                    final currentTime = await FullscreenYoutubePlayer.launch(
                                      context,
                                      videoId: videoData.videoId,
                                      startSeconds: startSeconds,
                                    );

                                    if (currentTime != null) {
                                      YoutubePlayerController.fromVideoId(
                                        videoId: _videoIds[index],
                                        autoPlay: false,
                                        params: const YoutubePlayerParams(showFullscreenButton: true),
                                      ).seekTo(seconds: currentTime);
                                    }
                                  },
                                ),
                            ),
                          );
                        }
                    ),),*/
              ],
            ),
            desktop: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Text(
                      "BURSA LIFE",
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
                      itemCount: bursaGalleryProvider.getBursaGalleryDataList.length,
                      itemBuilder: (context, index) {
                        final data= bursaGalleryProvider.getBursaGalleryDataList[index];
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
                            return FadeInUpBig(
                              duration: const Duration(milliseconds: 1600),
                              child: InkWell(
                                onTap: () {
                                  Hive.box("galleryDataBox").putAll({"imageGallery": imageGallery});
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Dialog(
                                          child: InteractiveViewer(
                                            child: Image.network("${Hive.box("galleryDataBox").get("imageGallery").toString()}"),
                                            boundaryMargin: EdgeInsets.all(50), // Margin around the zoomable area
                                            minScale: 0.5, // Minimum scale (zoom out)
                                            maxScale: 2.0, // Maximum scale (zoom in)
                                            scaleEnabled: false, // Enable scaling
                                            panEnabled: false, // Enable panning
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8, right: 8),
                                      child: Image.network(
                                          imageGallery,
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
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /*Center(
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
                    child:  GridView.builder(
                        itemCount: _videoIds.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 350,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20),
                            child: YoutubePlayer(
                              //aspectRatio: 16 / 9,
                              enableFullScreenOnVerticalDrag: false,
                              controller: YoutubePlayerController.fromVideoId(
                                videoId: _videoIds[index],
                                autoPlay: false,
                                params: const YoutubePlayerParams(showFullscreenButton: true),
                              )
                                ..setFullScreenListener(
                                      (_) async {
                                    final videoData = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).videoData;
                                    final startSeconds = await YoutubePlayerController.fromVideoId(
                                      videoId: _videoIds[index],
                                      autoPlay: false,
                                      params: const YoutubePlayerParams(showFullscreenButton: true),
                                    ).currentTime;

                                    final currentTime = await FullscreenYoutubePlayer.launch(
                                      context,
                                      videoId: videoData.videoId,
                                      startSeconds: startSeconds,
                                    );

                                    if (currentTime != null) {
                                      YoutubePlayerController.fromVideoId(
                                        videoId: _videoIds[index],
                                        autoPlay: false,
                                        params: const YoutubePlayerParams(showFullscreenButton: true),
                                      ).seekTo(seconds: currentTime);
                                    }
                                  },
                                ),
                            ),
                          );
                        }
                    ),

                ),*/
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
