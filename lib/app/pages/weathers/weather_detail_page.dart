import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/pages/weathers/components/text_temperature.dart';
import 'package:weather/app/pages/weathers/components/weather_header.dart';

import 'components/circular_dots_menu.dart';
import 'components/dots_menu_vertical.dart';
import 'components/weather_details_row.dart';

class WeatherDetailPage extends StatelessWidget {
  const WeatherDetailPage(this.data, {Key? key}) : super(key: key);
  final BaseWeather data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: VStack([
        WeatherHeader(
          context.screenHeight / 2,
          headers: [
            CircularDotsMenu(onTap: () {}),
            VStack([
              HStack([
                const Icon(FontAwesome5.calendar, color: Colors.white),
                const SizedBox(width: 10),
                '7 Days'.text.size(22).white.fontWeight(FontWeight.w700).make()
              ])
                  .centered()
                  .box
                  .withConstraints(const BoxConstraints(minWidth: 220))
                  .make(),
            ]),
            DotsMenuVerticalWidget(onTap: () {}),
          ],
          content: VStack([
            HStack([
              Image.network(
                ENV.IMG_URI(
                  '${data.current?.weather?.first.icon}',
                  size: '@4x',
                ),
                filterQuality: FilterQuality.high,
              ).box.width(166).height(166).make(),
              VStack([
                'Tomorrow'
                    .text
                    .size(18)
                    .fontWeight(FontWeight.w600)
                    .white
                    .make(),
                HStack(
                  [
                    '${data.daily?[0].clouds}'
                        .text
                        .size(55)
                        .extraBold
                        .white
                        .make(),
                    TextTemperature(
                      '/${data.daily?[0].temp?.min}',
                      textSize: 24,
                      circleSize: 8,
                      borderWidth: 3,
                      color: const Color(0xFF71CBFB),
                    ).pOnly(bottom: 10),
                  ],
                  crossAlignment: CrossAxisAlignment.end,
                  alignment: MainAxisAlignment.end,
                ),
                '${data.daily?[0].weather?.first.main}'
                    .text
                    .size(16)
                    .fontWeight(FontWeight.w600)
                    .color(const Color(0xFF71CBFB))
                    .make(),
              ]),
            ]),
            WeatherDetailsRow(data, type: WeatherType.daily, dayIndex: 1),
          ]),
        ).pOnly(top: 10),
        VStack(
          data.daily!.asMap().entries.mapIndexed((value, index) {
            if (index <= 6) {
              return HStack(
                [
                  Text(
                    index == 0
                        ? 'Mon'
                        : index == 1
                            ? 'Tues'
                            : index == 2
                                ? 'Wed'
                                : index == 3
                                    ? 'Thurs'
                                    : index == 4
                                        ? 'Fri'
                                        : index == 5
                                            ? 'Satur'
                                            : 'Sun',
                  )
                      .text
                      .size(16)
                      .fontWeight(FontWeight.w500)
                      .color(const Color(0xFF68798F))
                      .make()
                      .box
                      .withConstraints(const BoxConstraints(minWidth: 60))
                      .make(),
                  HStack(
                    [
                      Image.network(
                        ENV.IMG_URI(
                          '${data.daily?[index].weather?.first.icon}',
                          size: '@4x',
                        ),
                        filterQuality: FilterQuality.high,
                      ).box.width(46).height(46).make(),
                      '${data.daily?[index].weather?.first.main}'
                          .text
                          .size(16)
                          .fontWeight(FontWeight.w600)
                          .color(const Color(0xFF68798F))
                          .make()
                    ],
                    alignment: MainAxisAlignment.start,
                    crossAlignment: CrossAxisAlignment.center,
                  ),
                  HStack([
                    TextTemperature(
                      '+${data.daily?[index].temp?.max}',
                      textSize: 18,
                      circleSize: 8,
                      borderWidth: 2,
                      color: Colors.white,
                    ),
                    TextTemperature(
                      ' +${data.daily?[index].temp?.min}',
                      textSize: 18,
                      fontWeight: FontWeight.w500,
                      circleSize: 6,
                      borderWidth: 1,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ]),
                ],
                alignment: MainAxisAlignment.spaceAround,
              ).w(double.infinity);
            }
            return const SizedBox.shrink();
          }).toList(),
        ),
      ]).scrollVertical(),
    );
  }
}
