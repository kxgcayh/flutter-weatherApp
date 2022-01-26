import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/gen/assets.gen.dart';

class WeatherDetailsRow extends StatelessWidget {
  const WeatherDetailsRow(this.data, {Key? key}) : super(key: key);
  final BaseWeather data;

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        VStack(
          [
            Assets.images.wind.image(),
            '${data.current?.windSpeed} Mps'
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
            '${data.current?.windSpeed}%'
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
            '${data.current?.clouds}%'
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
