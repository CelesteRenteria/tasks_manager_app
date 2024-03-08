import 'package:flutter/material.dart';

import '../utils/fonts.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color borde;
  final String text;
  final Function() function;
  const CustomButton(
      {required this.color,
      required this.borde,
      required this.text,
      required this.function,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: function,
        child: Container(
          
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: borde,
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Text(text, style: FontsApp.avenirWhite,textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}
