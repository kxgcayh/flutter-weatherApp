import 'package:flutter/material.dart';

import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:velocity_x/velocity_x.dart';

class CircularDotsMenu extends StatelessWidget {
  const CircularDotsMenu({Key? key, this.onTap}) : super(key: key);
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      child: VxCircle(
        backgroundColor: Colors.transparent,
        border: Border.all(
          color: Colors.white.withOpacity(0.75),
          width: 2,
        ),
        child: VStack([
          HStack([
            VxCircle(backgroundColor: Colors.white).w(5).h(5).p(1.5),
            VxCircle(backgroundColor: Colors.white).w(5).h(5).p(1.5),
          ]),
          HStack([
            VxCircle(backgroundColor: Colors.white).w(5).h(5).p(1.5),
            VxCircle(backgroundColor: Colors.white).w(5).h(5).p(1.5),
          ]),
        ]).centered(),
      ).w(35).h(35),
    );
  }
}
