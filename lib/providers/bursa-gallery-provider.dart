import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/gallery-model.dart';

class BursaGalleryProvider with ChangeNotifier {

  List<GalleryModel> imageGalleryDataList = [];

  void getBursaGalleryData() async {
    List<GalleryModel> newList = [];

    QuerySnapshot reviewServiceValue =
    await FirebaseFirestore.instance.collection("BursaLife").get();
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

  List<GalleryModel> get getBursaGalleryDataList {
    return imageGalleryDataList;
  }
}