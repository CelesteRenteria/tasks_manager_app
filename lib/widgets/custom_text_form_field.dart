import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final Widget? label;
  final bool isMultiline;
  final bool isNumeric;
  final bool border;
  final TextAlign align;
  final bool obscureText;
  final bool enabled;
  final String? hintText;
  final Function(String)? onChanged;
  final TextStyle? styleHint;
  final TextStyle? styleInput;
  final bool grow;
  final List<TextInputFormatter>? format;
  final Icon? suffixIcon;

  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.suffixIcon,
      this.border = true,
      this.isNumeric = false,
      this.isMultiline = false,
      this.label,
      this.grow = false,
      this.align = TextAlign.start,
      this.obscureText = false,
      this.onChanged,
      this.styleHint,
      this.styleInput,
      this.format,
      this.controller,
      this.enabled = true,
      this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:
      isNumeric?
      TextInputType.number
      : isMultiline ? TextInputType.text : TextInputType.multiline,
      initialValue: initialValue,
      textAlign: align,
      enabled: enabled,
      maxLines: grow?null:1,
      controller: controller,
      style: styleInput ?? FontsApp.avenirNegro,
      inputFormatters:
          format ?? [FilteringTextInputFormatter.singleLineFormatter],
      obscureText: obscureText,
      decoration: InputDecoration(

          // ignore: unnecessary_null_in_if_null_operators
          label: label ?? null,
          suffixIcon: suffixIcon,
          enabledBorder: (border)?
          OutlineInputBorder(
             borderSide:
             BorderSide(color: Theme.of(context).disabledColor),
                  borderRadius: BorderRadius.circular(30)):
          UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).disabledColor)),

          focusedBorder:(border)?
          OutlineInputBorder(
             borderSide:
             BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(10)):
          UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
          
          
        
          hintStyle: styleHint ?? FontsApp.hintText,
          hintText: hintText,
          ),
      onChanged: onChanged,
    );
  }
}
