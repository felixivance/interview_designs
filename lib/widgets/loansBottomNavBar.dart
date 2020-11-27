
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_designs/config/constants.dart';
//improvised icons
Widget bottomNavigation(context){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: (){

            },
            child: Container(
              height: 80,
              width: 200,
              color: OrangeColor,
              child: Icon(FontAwesomeIcons.commentDollar, color: Colors.white,size: 30,),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){

            },
            child: Container(
              height: 80,
              width: 200,
              color: BlueColor,
              child: Icon(FontAwesomeIcons.home, color: Colors.white,size: 30,),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){

            },
            child: Container(
              height: 80,
              width: 200,
              color: BlueColor,
              child: Icon(FontAwesomeIcons.chartPie, color: Colors.white,size: 30,),
            ),
          ),
        )
      ],
    ),
  );
}

