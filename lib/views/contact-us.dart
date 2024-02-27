import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../globals/app-button.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../helpers/helper.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  File? _pickedImage;
  Uint8List webImage = Uint8List(8);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          RichText(
            text: TextSpan(
              text: 'Price ',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Subscription form',
                  style:
                      TextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
          Constants.sizedBox(height: 30.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Full Name'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Address'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Mobile Number'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Subject'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(""),
        Constants.sizedBox(height: 55.0),
        buildContactText(),
        /*Constants.sizedBox(height: 40.0),
        RichText(
          text: TextSpan(
            text: 'Price and ',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'Subscription form',
                style: TextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
              )
            ],
          ),
        ),*/
        Constants.sizedBox(height: 30.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Full Name'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Date of Birth'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Nationality'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'State'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Heigh(cm)'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Weight(Kg)'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Preferred foot'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Field position'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Current club'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: AppColors.bgColor2,
                  /*border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),*/
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Choose File', style: AppTextStyles.comfortaaStyle(),),
                      ),
                      Container(
                        color: AppColors.bgColor,
                        height: 55,
                        width: 3,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.memory(webImage,
                              fit: BoxFit.fill)
                        ),
                      ),

                    ],
                  ),
                  onPressed: (){
                    _pickImage();
                  },
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Video(url Youtube)'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          elevation: 8,
          child: TextField(
            maxLines: 4,
            cursorColor: AppColors.white,
            style: AppTextStyles.normalStyle(),
            decoration: buildInputDecoration(hintText: 'football key points'),
          ),
        ),
        Constants.sizedBox(height: 30.0),
        RichText(
          text: TextSpan(
            text: 'I have read and accept the ',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'General conditions ',
                style: TextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 30.0),
        AppButtons.buildMaterialButton(buttonName: 'Submit', onTap: () {
          _uploadForm();
        }),
        Constants.sizedBox(height: 35.0),
        Text(""),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'SUBSCRIPTION ',
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

  // this method to upload the images from device to firebase
  Future<void> _pickImage() async {
    if (!kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          _pickedImage = selected;
        });
      } else {
        print('No image has been picked');
      }
    } else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          _pickedImage = File('a');
        });
      } else {
        print('No image has been picked');
      }
    } else {
      print('Something went wrong');
    }
  }

  // this method to upload the images ,title and price from admin app to firebase
  void _uploadForm() async {
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child("images");
    String uniqueFileName =
    DateTime.now().microsecondsSinceEpoch.toString();
    Reference referenceImageToUpload =
    referenceDirImages.child(uniqueFileName);
    await referenceImageToUpload.putData(await webImage);
    var imageUri = await referenceImageToUpload.getDownloadURL();

    //fb.StorageReference storageRef =
    //fb.storage().ref().child('images');

    //final fb.UploadTaskSnapshot uploadTaskSnapshot =
    //await storageRef.put(kIsWeb ? webImage : _pickedImage).future;
    //Uri imageUri = await uploadTaskSnapshot.ref.getDownloadURL();

    await FirebaseFirestore.instance.collection('PlayersProfileDB').doc("8iWYmRjZXXv2EaeJQEGi").set({
      'imageUrl': imageUri.toString(),
      //'salePrice': 0.1,
    });
    //_clearForm();
    // this method to show massage after update
    Fluttertoast.showToast(
      msg: "Product saved succefully",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}
