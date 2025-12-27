import 'package:flutter/material.dart';
import 'package:islamiapp/core/extension/padding_extension.dart';
import 'package:islamiapp/core/gen/assets.gen.dart';
import 'package:islamiapp/core/theme/color_pallet.dart';

class Quranview extends StatelessWidget {
  const Quranview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Assets.images.quranViewBackground.provider(),
              fit: BoxFit.cover
          )
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 20.0, vertical: 12.0),
            child: Assets.images.hederLogo.image(),
          ),
          TextField(
            cursorColor: ColorPallet.primaryColor,
            decoration: InputDecoration(
                hintText: "Sura Name",
                hintStyle: TextStyle(
                    color: ColorPallet.generalTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorPallet.primaryColor),
                    borderRadius: BorderRadius.circular(12)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorPallet.primaryColor),
                    borderRadius: BorderRadius.circular(12)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorPallet.primaryColor),
                    borderRadius: BorderRadius.circular(12)
                ),
                prefixIcon: Assets.icons.quranActive.svg(
                    colorFilter: ColorFilter.mode(
                        ColorPallet.primaryColor, BlendMode.srcIn)
                ).setHorizontalPaddingOnWidget(12)
            ),
          ),
          SizedBox(height: 10,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Most Recently", style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,)),
          SizedBox(height: 10,),
          ListView.separated(itemBuilder: (context, index) {
            return Container(
              color: ColorPallet.primaryColor,
              child: Text("M"),
            );
          }, separatorBuilder: (context, index) {
            return SizedBox(width: 10,);
          }, itemCount: 5)
        ],
      ).setHorizontalPaddingOnWidget(20),
    );
  }
}
