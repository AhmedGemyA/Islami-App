import 'package:flutter/material.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';

class Sebhaview extends StatelessWidget {
  const Sebhaview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.sebhaViewBackground.provider(),
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
