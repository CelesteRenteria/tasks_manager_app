import 'package:flutter/material.dart';

class SpaceHorizontal extends StatelessWidget {
  final double size;
  const SpaceHorizontal(
    this.size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
