import 'package:flutter/material.dart';

import '../globals/app-color.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('© Copyright Aba Mele.', style: TextStyle(color: Colors.white),),
          SizedBox(child: Row(
            children: [
              Text('Designed by', style: TextStyle(color: Colors.white)),
              SizedBox(width: 3.0,),
              Image.asset("assets/logoweb.png", width: 20, height: 20,),
            ],
          )),
        ],
      ),
      /*child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.themeColor),
          child: const Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),*/
    );
  }
}