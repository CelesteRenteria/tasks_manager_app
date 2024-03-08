import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/utils/fonts.dart';
import 'package:task/widgets/custom_text_form_field.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      border: true,
      hintText: 'Buscar',
      styleHint: FontsApp.hintText,
      styleInput: FontsApp.avenirWhite,
      suffixIcon: Icon(Icons.search_rounded, size: 60.sp, color: Colors.white,),
    );
  }
}