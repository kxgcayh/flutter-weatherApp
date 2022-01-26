import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/others/helpers.dart';

class TextTemperature extends StatelessWidget {
  const TextTemperature(
    this.text, {
    Key? key,
    required this.textSize,
    required this.circleSize,
    this.borderWidth = 2,
    this.color,
  }) : super(key: key);
  final String text;
  final double textSize;
  final double circleSize;
  final double borderWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        Text(
          text.contains('.') ? text.removeDouble() : text,
        )
            .text
            .size(textSize)
            .fontWeight(FontWeight.w700)
            .color(color ?? Colors.white)
            .center
            .make(),
        VxCircle(
          border: Border.all(
            color: color ?? Colors.white,
            width: borderWidth,
          ),
          backgroundColor: Colors.transparent,
        ).w(circleSize).h(circleSize),
      ],
      crossAlignment: CrossAxisAlignment.start,
    );
  }
}
