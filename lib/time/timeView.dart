import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/theme/color_pallet.dart';

class Timeview extends StatelessWidget {
  const Timeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.timeViewBackground.provider(),
              fit: BoxFit.cover
          )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 20.0, vertical: 12.0)),
          Assets.images.hederLogo.image(),
        ],
      ),
    );
  }
}
