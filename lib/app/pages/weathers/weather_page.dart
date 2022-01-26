import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/repositories/weather_repository.dart';
import 'package:weather/app/pages/weathers/components/circular_dots_menu.dart';
import 'package:weather/app/pages/weathers/components/dots_menu_vertical.dart';
import 'package:weather/app/pages/weathers/components/vertical_weather_container.dart';
import 'package:weather/app/pages/weathers/components/weather_details_row.dart';

import '../../app_router.dart';
import 'components/text_temperature.dart';
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
                  ])
                      .centered()
                      .box
                      .withConstraints(const BoxConstraints(minWidth: 220))
                      .make(),
                  VxBox(
                    child: HStack([
                      VxCircle(backgroundColor: Colors.yellow).w(6).h(6),
                      const SizedBox(width: 5),
                      'Updated at ${time.convertToAgo()}'
                          .text
                          .size(11)
                          .white
                          .make(),
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
              content: VStack(
                [
                  Image.network(
                    ENV.IMG_URI(
                      '${data.current?.weather?.first.icon}',
                      size: '@4x',
                    ),
                    filterQuality: FilterQuality.high,
                  ).box.width(150).height(150).makeCentered(),
                  VStack([
                    TextTemperature(
                      '${data.current?.temp}',
                      circleSize: 19,
                      textSize: 116,
                      borderWidth: 4,
                    ).centered().pOnly(left: 19),
                    '${data.current?.weather?.first.main}'
                        .text
                        .size(22)
                        .center
                        .extraBold
                        .white
                        .makeCentered(),
                    time
                        .todayFormat()
                        .text
                        .center
                        .fontWeight(FontWeight.w500)
                        .size(12)
                        .color(const Color(0xFF69B5FF))
                        .makeCentered(),
                  ]),
                  WeatherDetailsRow(data),
                ],
                crossAlignment: CrossAxisAlignment.center,
                alignment: MainAxisAlignment.center,
              ),
            ),
            VxBox(
              child: VStack([
                HStack(
                  [
                    'Today'.text.size(18).extraBold.white.make(),
                    TouchableOpacity(
                      onTap: () => context.router.push(
                        WeatherDetailPageRoute(data: data),
                      ),
                      child: '7 days>'
                          .text
                          .color(const Color(0xFF687B92))
                          .size(12)
                          .make(),
                    ),
                    // WeatherDetailPageRoute(),
                  ],
                  alignment: MainAxisAlignment.spaceBetween,
                ).w(double.infinity).py(14),
                HStack(
                  [
                    VerticalWeatherContainer(data, time: 10),
                    VerticalWeatherContainer(data, time: 11, isGradient: true),
                    VerticalWeatherContainer(data, time: 12),
                    VerticalWeatherContainer(data, time: 13),
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
