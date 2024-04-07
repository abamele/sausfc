import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/gallery-model.dart';

class SakaryGalleryProvider with ChangeNotifier {

  List<GalleryModel> imageGalleryDataList = [];

  void getSakaryaGalleryData() async {
    List<GalleryModel> newList = [];

    QuerySnapshot reviewServiceValue =
    await FirebaseFirestore.instance.collection("SakaryaLife").get();
    reviewServiceValue.docs.forEach((element) {
      GalleryModel galleryModel = GalleryModel(
        galleryId: element.get("galleryId"),
        imageGallery: List<String>.from(element.get('imageGallery')),
      );
      newList.add(galleryModel);
    });
    imageGalleryDataList = newList;
    notifyListeners();
  }

  List<GalleryModel> get getSakaryaGalleryDataList {
    return imageGalleryDataList;
  }
}