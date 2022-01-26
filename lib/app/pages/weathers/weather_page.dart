// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/repositories/weather_repository.dart';
import 'package:weather/app/pages/weathers/components/circular_dots_menu.dart';
import 'package:weather/app/pages/weathers/components/dots_menu_vertical.dart';
import 'package:weather/app/pages/weathers/components/weather_details_row.dart';
import 'package:weather/app/pages/weathers/weather_detail_page.dart';
import 'package:weather/gen/assets.gen.dart';

import 'components/weather_header.dart';

class WeatherPage extends ConsumerStatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends ConsumerState<WeatherPage> {
  @override
  void initState() {
    super.initState();
    ref.read(weatherStateNotifier.notifier).fetch();
  }

  @override
  Widget build(context) {
    final state = ref.watch(weatherStateNotifier);
    return state.when(
      initial: () => 'Please Wait'.text.makeCentered(),
      loading: () => const CircularProgressIndicator().centered(),
      error: (e) => '$e'.text.makeCentered(),
      data: (data, time) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: VStack([
            WeatherHeader(
              context.screenHeight / 1.3,
              headers: [
                CircularDotsMenu(onTap: () {}),
                VStack([
                  HStack([
                    const Icon(Iconic.location, color: Colors.white),
                    data.timezone!.text
                        .size(22)
                        .white
                        .fontWeight(FontWeight.w700)
                        .make()
                  ]),
                  VxBox(
                    child: HStack([
                      VxCircle(backgroundColor: Colors.yellow).w(6).h(6),
                      const SizedBox(width: 5),
                      'Updated at $time'.text.size(11).white.make(),
                    ]).px(10),
                  )
                      .height(23)
                      .customRounded(BorderRadius.circular(20))
                      .border(color: Colors.white)
                      .make()
                      .pOnly(top: 15),
                ], crossAlignment: CrossAxisAlignment.center),
                DotsMenuVerticalWidget(onTap: () {}),
              ],
              content: VStack([
                Image.network(
                  ENV.IMG_URI(
                    '${data.current?.weather?.first.icon}',
                    size: '@4x',
                  ),
                  filterQuality: FilterQuality.high,
                ).box.width(150).height(150).makeCentered(),
                VStack([
                  HStack(
                    [
                      Text(
                        '${data.current?.temp}'.contains('.')
                            ? '${data.current?.temp}'.removeDouble()
                            : '${data.current?.temp}',
                      )
                          .text
                          .size(116)
                          .fontWeight(FontWeight.w700)
                          .white
                          .center
                          .make(),
                      VxCircle(
                        border: Border.all(
                          color: const Color(0xFF82B5F8),
                          width: 4,
                        ),
                        backgroundColor: Colors.transparent,
                      ).w(19).h(19),
                    ],
                    crossAlignment: CrossAxisAlignment.start,
                  ).centered().pOnly(left: 19),
                  '${data.current?.weather?.first.main}'
                      .text
                      .size(22)
                      .center
                      .extraBold
                      .white
                      .makeCentered(),
                  '$time'
                      .text
                      .center
                      .fontWeight(FontWeight.w500)
                      .size(12)
                      .color(const Color(0xFF69B5FF))
                      .makeCentered(),
                ]),
                WeatherDetailsRow(data),
              ]),
            ),
            VxBox(
              child: VStack([
                HStack(
                  [
                    'Today'.text.size(18).extraBold.white.make(),
                    TouchableOpacity(
                      onTap: () {},
                      child: '7 days>'
                          .text
                          .color(const Color(0xFF687B92))
                          .size(12)
                          .make(),
                    ),
                  ],
                  alignment: MainAxisAlignment.spaceBetween,
                ).w(double.infinity).py(14),
                HStack(
                  [
                    _VerticalWeatherContainer(data, time: 10),
                    _VerticalWeatherContainer(data, time: 11, isGradient: true),
                    _VerticalWeatherContainer(data, time: 12),
                    _VerticalWeatherContainer(data, time: 13),
                  ],
                  alignment: MainAxisAlignment.spaceAround,
                ).w(double.infinity).px(10),
              ]).px(35),
            ).width(double.infinity).make(),
          ]).scrollVertical(),
        );
      },
    );
  }
}

class _VerticalWeatherContainer extends StatelessWidget {
  const _VerticalWeatherContainer(
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
        HStack(
          [
            Text(
              '${data.hourly?[time].temp}'.contains('.')
                  ? '${data.hourly?[time].temp}'.removeDouble()
                  : '${data.hourly?[time].temp}',
            ).text.size(16).fontWeight(FontWeight.w700).white.center.make(),
            VxCircle(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              backgroundColor: Colors.transparent,
            ).w(6).h(6),
          ],
          crossAlignment: CrossAxisAlignment.start,
        ),
        Image.network(
          ENV.IMG_URI(
            '${data.current?.weather?.first.icon}',
          ),
          filterQuality: FilterQuality.high,
        ),
        '$time:00'
            .text
            .fontWeight(FontWeight.w500)
            .size(12)
            .color(isGradient ? Colors.white : Color(0xFF687B92))
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
