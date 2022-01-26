import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class WeatherHeader extends StatelessWidget {
  const WeatherHeader(
    this.height, {
    Key? key,
    required this.headers,
  }) : super(key: key);

  final double height;
  final List<Widget> headers;

  @override
  Widget build(BuildContext context) {
    return ZStack([
      VxBox()
          .bottomRounded(value: 53.0)
          .width(context.screenWidth / 1.05)
          .height(height)
          .color(const Color(0xFF053F8D))
          .withShadow([
            const BoxShadow(
              color: Color(0xFF126CF4),
              offset: Offset(0.0, 5.0),
              blurRadius: 100.0,
              spreadRadius: 10.0,
            ),
          ])
          .makeCentered()
          .pOnly(top: 10),
      VxBox(
        child: HStack(
          headers,
          alignment: MainAxisAlignment.spaceAround,
          crossAlignment: CrossAxisAlignment.start,
        ).pOnly(top: 30),
      )
          .bottomRounded(value: 65.0)
          .height(height)
          .width(double.infinity)
          .linearGradient([
            const Color(0xFF126CF4),
            const Color(0xFF82DAF4),
          ], begin: Alignment.bottomLeft, end: Alignment.topRight)
          .border(color: const Color(0xFF78D1F5))
          .make(),
    ]);
  }
}
