
import 'package:flutter/material.dart';

import '../utils/fonts.dart';

class DropdownButtonCustom extends StatelessWidget {
  const DropdownButtonCustom({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.label
  }) : super(key: key);  

  final String value;
  final List<String> items;
  final Function(String? value)? onChanged;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      borderRadius: BorderRadius.circular(5),
      dropdownColor:Theme.of(context).canvasColor ,
      iconEnabledColor:Theme.of(context).primaryColor,
      isDense: true,
      isExpanded: true,
      value: value,
      style: FontsApp.avenirNegro,
      decoration: InputDecoration(
        // ignore: unnecessary_null_in_if_null_operators
        label: label??null,
        focusColor: Theme.of(context).primaryColor,
        focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).disabledColor))
      ),
      items: items
          .map((e) => DropdownMenuItem(
              value: e,
              child: Text(
                e,
                
              )))
          .toList(),
      onChanged: onChanged,
    );
  }
}