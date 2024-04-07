import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/about-model.dart';

class AboutProvider with ChangeNotifier {

  List<AboutModel> aboutDataList = [];

  void getAboutData() async {
    List<AboutModel> newList = [];

    QuerySnapshot reviewServiceValue =
    await FirebaseFirestore.instance.collection("ForwardsDB").get();
    reviewServiceValue.docs.forEach((element) {
      AboutModel aboutModel = AboutModel(
        textId: element.get("textId"),
        textHeader: element.get("textHeader"),
        text: element.get("text"),
      );
      newList.add(aboutModel);
    });
    aboutDataList = newList;
    notifyListeners();
  }

  List<AboutModel> get getAboutDataList {
    return aboutDataList;
  }
}