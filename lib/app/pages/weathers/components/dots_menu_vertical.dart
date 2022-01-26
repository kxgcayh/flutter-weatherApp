import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import 'package:velocity_x/velocity_x.dart';

class DotsMenuVerticalWidget extends StatelessWidget {
  const DotsMenuVerticalWidget({Key? key, this.onTap}) : super(key: key);

  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      child: VStack(
        [
          VxCircle(backgroundColor: Colors.white).w(6.5).h(6.5),
          VxCircle(backgroundColor: Colors.white).w(6.5).h(6.5),
          VxCircle(backgroundColor: Colors.white).w(6.5).h(6.5),
        ],
        alignment: MainAxisAlignment.spaceEvenly,
        crossAlignment: CrossAxisAlignment.center,
      ).h(35).w(35),
    );
  }
}
