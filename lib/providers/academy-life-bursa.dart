import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/academy-life-model.dart';

class AcademyLifeBursaProvider with ChangeNotifier {

  List<AcademyLifeModel> imageData = [];

  void getAcademyLifeBursaData() async {
    List<AcademyLifeModel> newList = [];

    QuerySnapshot reviewServiceValue =
    await FirebaseFirestore.instance.collection("AcademyLifeBursa").get();
    reviewServiceValue.docs.forEach((element) {
      AcademyLifeModel academyLifeModel = AcademyLifeModel(
        imageId: element.get("imageId"),
        image: element.get('image'),
        city: element.get('city'),
      );
      newList.add(academyLifeModel);
    });
    imageData = newList;
    notifyListeners();
  }

  List<AcademyLifeModel> get getAcademyLifeBursaImage {
    return imageData;
  }
}