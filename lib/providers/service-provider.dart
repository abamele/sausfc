import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:saus_fc/models/service-model.dart';

class ServiceProvider with ChangeNotifier {

  List<ServiceModel> serviceDataList = [];

  void getServiceData() async {
    List<ServiceModel> newList = [];

    QuerySnapshot reviewServiceValue =
    await FirebaseFirestore.instance.collection("ForwardsDB").get();
    reviewServiceValue.docs.forEach((element) {
      ServiceModel serviceModel = ServiceModel(
        textId: element.get("textId"),
        textHeader: element.get("textHeader"),
        text: element.get("text"),
      );
      newList.add(serviceModel);
    });
    serviceDataList = newList;
    notifyListeners();
  }

  List<ServiceModel> get getForwardDataList {
    return serviceDataList;
  }
}