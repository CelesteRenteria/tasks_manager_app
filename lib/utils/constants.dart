import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Constants{
  static double margin = 12.0;
  static double marginBig = 24.0;
  static double marginSmall = 6.0;
  static bottomSheet(){
    return const 
    
    RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25)
      )
    );
  }




  static sheetBoxDecoration(Color color){
    return BoxDecoration(
      color:color,
      borderRadius: const BorderRadius.only(
        topLeft:Radius.circular(30),
        topRight:Radius.circular(30),
      )
    );
  }

  static dateFormatter(DateTime date){
    return DateFormat('dd MMM yyyy', 'ES_mx').format(date);
  }
}