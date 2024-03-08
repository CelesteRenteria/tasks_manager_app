import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme.dart';


class FontsApp {
  //Titulos
  static TextStyle montserratTitle = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 45.sp, 
      color: ColorsApp.neutral,
      fontWeight: FontWeight.w600);
  static TextStyle montserratTitleBigger = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 60.sp, 
      color: ColorsApp.neutral,
      fontWeight: FontWeight.w800);
  static TextStyle montserratTitleColorPrimary = TextStyle(
      color: ColorsApp.primary,
      fontFamily: 'Montserrat',
      fontSize: 60.sp,
      fontWeight: FontWeight.bold);
      static TextStyle montserratTitleColorSecondary = TextStyle(
      color: ColorsApp.secondary,
      fontFamily: 'Montserrat',
      fontSize: 60.sp,
      fontWeight: FontWeight.bold);
      static TextStyle montserratTitleWhite = TextStyle(
      color: ColorsApp.neutral,
      fontFamily: 'Montserrat',
      fontSize: 50.sp,
      fontWeight: FontWeight.w400);
  
  //Cuerpo
    static TextStyle avenirNegro = TextStyle(
      fontFamily: 'Avenir',
       fontSize: 30.sp,
       color: ColorsApp.black
       );
    static TextStyle hintText = TextStyle(
      fontFamily: 'Avenir',
       fontSize: 30.sp,
       color: ColorsApp.disable
       );
    static TextStyle avenirWhite = TextStyle(
      fontFamily: 'Avenir',
       fontSize: 30.sp,
       color: Colors.white,
       fontWeight: FontWeight.w200
       );
    static TextStyle avenirPrimary = TextStyle(
      fontFamily: 'Avenir',
       fontSize: 30.sp,
       color: ColorsApp.primary
       );

}
