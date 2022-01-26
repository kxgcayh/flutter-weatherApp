import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/pages/weathers/components/text_temperature.dart';
import 'package:weather/gen/assets.gen.dart';

class VerticalWeatherContainer extends StatelessWidget {
  const VerticalWeatherContainer(
    this.data, {
    Key? key,
    required this.time,
    this.content,
    this.isGradient = false,
  }) : super(key: key);
  final BaseWeather data;
  final int time;
  final Widget? content;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack([
        TextTemperature(
          '${data.hourly?[time].temp}',
          circleSize: 6,
          textSize: 16,
        ),
        OctoImage(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          image: CachedNetworkImageProvider(
            ENV.IMG_URI(
              '${data.current?.weather?.first.icon}',
              size: '@4x',
            ),
          ),
          placeholderBuilder: (context) {
            return Assets.images.weather.image(fit: BoxFit.contain);
          },
          errorBuilder: (context, error, stackrace) {
            return Assets.images.weather.image();
          },
        ),
        '$time:00'
            .text
            .fontWeight(FontWeight.w500)
            .size(12)
            .color(isGradient ? Colors.white : const Color(0xFF687B92))
            .make()
      ], crossAlignment: CrossAxisAlignment.center)
          .py(6),
    )
        .width(66)
        .border(color: const Color(0xFF272727))
        .withRounded(value: 27)
        .linearGradient(
          isGradient
              ? [const Color(0xFF126CF4), const Color(0xFF82DAF4)]
              : [Colors.transparent, Colors.transparent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )
        .make();
  }
}
