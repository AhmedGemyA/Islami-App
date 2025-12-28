import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islamiapp/core/extension/padding_extension.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/models/suraData.dart';

class Suracard extends StatelessWidget {
  final Suradata suraData;

  final Function onTap;

  const Suracard({super.key, required this.suraData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Bounceable(
      onTap: () {
        onTap();
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.thePorderForSoraNumber.provider(),
              ),
            ),
            child: Text(
              suraData.suraNumber,
              style: theme.textTheme.titleLarge?.copyWith(fontSize: 15),
            ),
          ),
          SizedBox(width: 24),
          Column(
            children: [
              Text(
                suraData.suraNameEn,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${suraData.suraVersesCount} Verses       ",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraData.suraNameAr,
            style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
        ],
      ).setHorizontalPaddingOnWidget(20),
    );
  }
}
