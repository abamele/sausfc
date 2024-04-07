import 'dart:io';
import 'dart:typed_data';

import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../globals/app-button.dart';
import '../globals/app-color.dart';
import '../globals/app-constant.dart';
import '../globals/app-styles.dart';
import '../globals/global-method.dart';
import '../globals/phone-number-format.dart';
import '../helpers/helper.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final UsNumberTextInputFormatter _phoneNumberFormatter =
      UsNumberTextInputFormatter();
  final _formKey = GlobalKey<FormState>();
  File? _pickedImage;
  Uint8List webImage = Uint8List(8);
  bool _isLoading = false;
  DateTime selectedDate = DateTime.now();
  DateTime? dateTime1;
  String? strDate;

  final TextEditingController fullName = TextEditingController();
  final TextEditingController dateOfBirth = TextEditingController();
  final TextEditingController nationality = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController weight = TextEditingController();
  final TextEditingController preferredFoot = TextEditingController();
  final TextEditingController fieldPosition = TextEditingController();
  final TextEditingController currentClub = TextEditingController();
  final TextEditingController imageField = TextEditingController();
  final TextEditingController youtubeUrl = TextEditingController();
  final TextEditingController footballKeyPoint = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Constants.sizedBox(height: 20.0),
            Text(""),
            FadeInDown(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                  text: 'SUBSCRIPTION ',
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
            /*Constants.sizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: 'Subscription ',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '',
                    style:
                        TextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
                  )
                ],
              ),
            ),*/
            Constants.sizedBox(height: 30.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Full Name'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextFormField(
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Date of Birth'),
                onTap: () async {
                  FocusScope.of(context).requestFocus(new FocusNode());
                  await _openDatePicker1(context);
                  dateOfBirth.text =
                      DateFormat('dd/MM/yyyy').format(dateTime1!);
                },
                onSaved: (val) {
                  strDate = val;
                },
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Nationality'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'State'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Email'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Phone Number'),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                  LengthLimitingTextInputFormatter(10),
                  _phoneNumberFormatter
                ],
                keyboardType: TextInputType.number,
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Height(cm)'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Weightt(cm)'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Preferred foot'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Field position'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration: buildInputDecoration(hintText: 'Current club'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Container(
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
                      child: Text(
                        'Choose File',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Container(
                      color: AppColors.bgColor,
                      height: 55,
                      width: 3,
                    ),
                    _pickedImage == null
                        ? Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("No file chosen",
                              style: TextStyle(fontSize: 14, color: Colors.grey),),
                          )
                        : Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child:
                                    Image.memory(webImage, fit: BoxFit.fill)),
                          ),
                  ],
                ),
                onPressed: () {
                  _pickImage();
                },
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration:
                    buildInputDecoration(hintText: 'Video(url Youtube)'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                maxLines: 4,
                cursorColor: AppColors.white,
                style: TextStyle(fontSize: 14, color: Colors.grey),
                decoration:
                    buildInputDecoration(hintText: 'Football key points'),
              ),
            ),
            Constants.sizedBox(height: 40.0),
            AppButtons.buildMaterialButton(buttonName: 'Submit', onTap: () {}),
            Constants.sizedBox(height: 20.0),
            Text("")
          ],
        ),
      ),
      tablet: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(""),
            Constants.sizedBox(height: 10.0),
            buildContactText(),
            Constants.sizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      textCapitalization: TextCapitalization.characters,
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
                    child: TextFormField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration:
                          buildInputDecoration(hintText: 'Date of Birth'),
                      onTap: () async {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        await _openDatePicker1(context);
                        dateOfBirth.text =
                            DateFormat('dd/MM/yyyy').format(dateTime1!);
                      },
                      onSaved: (val) {
                        strDate = val;
                      },
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
                      textCapitalization: TextCapitalization.characters,
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
                      textCapitalization: TextCapitalization.characters,
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
                      controller: email,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(hintText: 'Email'),
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
                      controller: phone,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration:
                          buildInputDecoration(hintText: 'Phone Number'),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                        LengthLimitingTextInputFormatter(10),
                        _phoneNumberFormatter
                      ],
                      keyboardType: TextInputType.number,
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
                      textCapitalization: TextCapitalization.characters,
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
                      textCapitalization: TextCapitalization.characters,
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
                      textCapitalization: TextCapitalization.characters,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration:
                          buildInputDecoration(hintText: 'Preferred foot'),
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
                      textCapitalization: TextCapitalization.characters,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration:
                          buildInputDecoration(hintText: 'Field position'),
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
                      textCapitalization: TextCapitalization.characters,
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration:
                          buildInputDecoration(hintText: 'Current club'),
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
                            child: Text(
                              'Choose File',
                              style: AppTextStyles.comfortaaStyle(),
                            ),
                          ),
                          Container(
                            color: AppColors.bgColor,
                            height: 55,
                            width: 3,
                          ),
                          _pickedImage == null
                              ? Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("No file chosen",
                                      style: AppTextStyles.comfortaaStyle()),
                                )
                              : Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.memory(webImage,
                                          fit: BoxFit.fill)),
                                ),
                        ],
                      ),
                      onPressed: () {
                        _pickImage();
                      },
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
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration:
                    buildInputDecoration(hintText: 'Video(url Youtube)'),
              ),
            ),
            Constants.sizedBox(height: 20.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                textCapitalization: TextCapitalization.characters,
                maxLines: 4,
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration:
                    buildInputDecoration(hintText: 'football key points'),
              ),
            ),
            Constants.sizedBox(height: 30.0),
            /*RichText(
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
          ),*/
            //Constants.sizedBox(height: 30.0),
            AppButtons.buildMaterialButton(
                buttonName: 'Submit',
                onTap: () {
                  submitForm();
                }),
            Constants.sizedBox(height: 25.0),
            Text(""),
          ],
        ),
      ),
      desktop: buildForm(),
      paddingWidth: size.width * 0.12,
      bgColor: AppColors.bgColor,
    );
  }

  Form buildForm() {
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(""),
          Constants.sizedBox(height: 10.0),
          buildContactText(),
          Constants.sizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    textCapitalization: TextCapitalization.characters,
                    controller: fullName,
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
                  child: TextFormField(
                    controller: dateOfBirth,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Date of Birth'),
                    onTap: () async {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      await _openDatePicker1(context);
                      dateOfBirth.text =
                          DateFormat('dd/MM/yyyy').format(dateTime1!);
                    },
                    onSaved: (val) {
                      strDate = val;
                    },
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
                    textCapitalization: TextCapitalization.characters,
                    controller: nationality,
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
                    textCapitalization: TextCapitalization.characters,
                    controller: state,
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
                    controller: email,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Email'),
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
                    controller: phone,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Phone Number'),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                      LengthLimitingTextInputFormatter(10),
                      _phoneNumberFormatter
                    ],
                    keyboardType: TextInputType.number,
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
                    textCapitalization: TextCapitalization.characters,
                    controller: height,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration: buildInputDecoration(hintText: 'Height(cm)'),
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
                    textCapitalization: TextCapitalization.characters,
                    controller: weight,
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
                    textCapitalization: TextCapitalization.characters,
                    controller: preferredFoot,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: 'Preferred foot'),
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
                    textCapitalization: TextCapitalization.characters,
                    controller: fieldPosition,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: 'Field position'),
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
                    textCapitalization: TextCapitalization.characters,
                    controller: currentClub,
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
                          child: Text(
                            'Choose File',
                            style: AppTextStyles.comfortaaStyle(),
                          ),
                        ),
                        Container(
                          color: AppColors.bgColor,
                          height: 55,
                          width: 3,
                        ),
                        _pickedImage == null
                            ? Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("No file chosen",
                                    style: AppTextStyles.comfortaaStyle()),
                              )
                            : Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.memory(webImage,
                                        fit: BoxFit.fill)),
                              ),
                      ],
                    ),
                    onPressed: () {
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
                    controller: youtubeUrl,
                    cursorColor: AppColors.white,
                    style: AppTextStyles.normalStyle(),
                    decoration:
                        buildInputDecoration(hintText: 'Video(url Youtube)'),
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
              textCapitalization: TextCapitalization.characters,
              controller: footballKeyPoint,
              maxLines: 4,
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'football key points'),
            ),
          ),
          Constants.sizedBox(height: 30.0),
          //Constants.sizedBox(height: 30.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Submit',
              onTap: () {
                submitForm();
              }),
          Constants.sizedBox(height: 25.0),
          Text(""),
        ],
      ),
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

  void submitForm() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();

      if (_pickedImage == null) {
        GlobalMethods.errorDialog(
            subtitle: 'Please pick up an image', context: context);
        return;
      }
      //final _uuid = const Uuid().v4();
      try {
        setState(() {
          _isLoading = true;
        });

        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child("profileImages");
        String uniqueFileName =
            DateTime.now().microsecondsSinceEpoch.toString();
        Reference referenceImageToUpload =
            referenceDirImages.child(uniqueFileName);
        await referenceImageToUpload.putData(
            await webImage, SettableMetadata(contentType: "image/jpeg"));
        var imageUri = await referenceImageToUpload.getDownloadURL();

        //fb.StorageReference storageRef =
        //fb.storage().ref().child('images');

        //final fb.UploadTaskSnapshot uploadTaskSnapshot =
        //await storageRef.put(kIsWeb ? webImage : _pickedImage).future;
        //Uri imageUri = await uploadTaskSnapshot.ref.getDownloadURL();

        await FirebaseFirestore.instance.collection('RegistrationDB').add({
          //'productId': _uuid,
          //'title': _titleController.text,
          'fullName': fullName.text,
          'dateOfBirth': dateOfBirth.text,
          'nationality': nationality.text,
          'state': state.text,
          'email': email.text,
          'phone': phone.text,
          'height': height.text,
          'weight': weight.text,
          'preferredFoot': preferredFoot.text,
          'fieldPosition': fieldPosition.text,
          'currentClub': currentClub.text,
          'imageField': imageUri,
          'youtubeUrl': youtubeUrl.text,
          'footballKeyPoint': footballKeyPoint.text,
          //'salePrice': 0.1,
        });

        Fluttertoast.showToast(
          msg: "Your submission has been received",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
        );
        fullName.clear();
        dateOfBirth.clear();
        nationality.clear();
        nationality.clear();
        state.clear();
        email.clear();
        phone.clear();
        height.clear();
        weight.clear();
        preferredFoot.clear();
        fieldPosition.clear();
        currentClub.clear();
        imageField.clear();
        youtubeUrl.clear();
        footballKeyPoint.clear();
        setState(() {
          _pickedImage = null;
          webImage = Uint8List(8);
        });
      } on FirebaseException catch (error) {
        GlobalMethods.errorDialog(
            subtitle: '${error.message}', context: context);
        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        GlobalMethods.errorDialog(subtitle: '$error', context: context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
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

  Future<void> _openDatePicker1(BuildContext context) async {
    dateTime1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1980),
        lastDate: DateTime(2090),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: AppColors.bgColor, // header background color
                onPrimary: Colors.white, // header text color
                onSurface: AppColors.bgColor, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.bgColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        });
  }
}
