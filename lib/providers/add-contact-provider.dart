import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddContactProvider with ChangeNotifier {
  void addContactData({
    String? fullName,
    String? dateOfBirth,
    String? nationality,
    String? state,
    String? email,
    String? phone,
    String? height,
    String? weight,
    String? preferredFoot,
    String? fieldPosition,
    String? currentClub,
    String? imageField,
    String? youtubeUrl,
    String? footballKeyPoint,
  }) async {
    FirebaseFirestore.instance.collection("RegistrationDB").add(
      {
        "fullName": fullName,
        "dateOfBirth": dateOfBirth,
        "nationality": nationality,
        "state": state,
        "email": email,
        "phone": phone,
        "height": height,
        "weight": weight,
        "preferredFoot": preferredFoot,
        "fieldPosition": fieldPosition,
        "currentClub": currentClub,
        "imageField": imageField,
        "youtubeUrl": youtubeUrl,
        "footballKeyPoint": footballKeyPoint,
      },
    );
  }

  void updateContactData({
    String? registId,
    String? fullName,
    String? dateOfBirth,
    String? nationality,
    String? state,
    String? email,
    String? phone,
    String? height,
    String? weight,
    String? preferredFoot,
    String? fieldPosition,
    String? currentClub,
    String? imageField,
    String? youtubeUrl,
    String? footballKeyPoint,
  }) async {
    FirebaseFirestore.instance.collection("RegistrationDB").doc(registId).update(
      {
        "uuid": registId,
        "fullName": fullName,
        "dateOfBirth": dateOfBirth,
        "nationality": nationality,
        "state": state,
        "email": email,
        "phone": phone,
        "height": height,
        "weight": weight,
        "preferredFoot": preferredFoot,
        "fieldPosition": fieldPosition,
        "currentClub": currentClub,
        "imageField": imageField,
        "youtubeUrl": youtubeUrl,
        "footballKeyPoint": footballKeyPoint,
      },
    );
  }

}