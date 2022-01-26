import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/pages/weathers/components/weather_header.dart';

import 'components/circular_dots_menu.dart';
import 'components/dots_menu_vertical.dart';

class WeatherDetailPage extends StatelessWidget {
  const WeatherDetailPage(this.data, {Key? key}) : super(key: key);
  final BaseWeather data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        WeatherHeader(
          context.screenHeight / 1.3,
          headers: [
            CircularDotsMenu(onTap: () {}),
            VStack([
              HStack([
                const Icon(FontAwesome5.calendar, color: Colors.white),
                const SizedBox(width: 10),
                '7 Days'.text.size(22).white.fontWeight(FontWeight.w700).make()
              ]),
            ]),
            DotsMenuVerticalWidget(onTap: () {}),
          ],
        ),
      ]).scrollVertical(),
    );
  }
}
