import 'package:flutter/material.dart';

class SpaceVertical extends StatelessWidget {
  final double size;
  const SpaceVertical(
    this.size, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}
