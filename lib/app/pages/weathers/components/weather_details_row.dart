import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/gen/assets.gen.dart';

enum WeatherType { current, daily }

class WeatherDetailsRow extends StatelessWidget {
  const WeatherDetailsRow(
    this.data, {
    Key? key,
    this.type = WeatherType.current,
    this.dayIndex = 0,
  }) : super(key: key);

  final BaseWeather data;
  final WeatherType? type;
  final int? dayIndex;

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        VStack(
          [
            Assets.images.wind.image(),
            Text(type == WeatherType.current
                    ? '${data.current?.windSpeed} Mps'
                    : '${data.daily?[dayIndex!].windSpeed} Mps')
                .text
                .size(13)
                .color(Colors.white.withOpacity(0.75))
                .fontWeight(FontWeight.w500)
                .make()
                .pOnly(top: 4),
            'Wind'
                .text
                .size(12)
                .fontWeight(FontWeight.w500)
                .color(const Color(0xFF69B5FF))
                .make(),
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
        VStack(
          [
            Assets.images.humidity.image(),
            Text(type == WeatherType.current
                    ? '${data.current?.humidity}%'
                    : '${data.daily?[dayIndex!].humidity}%')
                .text
                .size(13)
                .color(Colors.white.withOpacity(0.75))
                .fontWeight(FontWeight.w500)
                .make()
                .pOnly(top: 4),
            'Humidity'
                .text
                .size(12)
                .fontWeight(FontWeight.w500)
                .color(const Color(0xFF69B5FF))
                .make(),
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
        VStack(
          [
            Assets.images.coRain.image(),
            Text(type == WeatherType.current
                    ? '${data.current?.clouds}%'
                    : '${data.daily?[dayIndex!].clouds}%')
                .text
                .size(13)
                .color(Colors.white.withOpacity(0.75))
                .fontWeight(FontWeight.w500)
                .make()
                .pOnly(top: 4),
            'Chance of Rain'
                .text
                .size(12)
                .fontWeight(FontWeight.w500)
                .color(const Color(0xFF69B5FF))
                .make(),
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        ),
      ],
      alignment: MainAxisAlignment.spaceAround,
    ).w(double.infinity).pOnly(top: 25, left: 20).objectCenter();
  }
}
