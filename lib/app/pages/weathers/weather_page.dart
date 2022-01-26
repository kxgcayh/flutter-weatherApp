import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
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
            // VxBox().red100.make().expand(),
          ]).h(context.screenHeight).scrollVertical(),
        );
      },
    );
  }
}
