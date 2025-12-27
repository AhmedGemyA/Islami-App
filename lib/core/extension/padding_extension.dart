import 'package:flutter/cupertino.dart';

extension PaddingtoWidget on Widget{
  Widget setHorizontalPaddingOnWidget(double value) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: value),
      child: this,
    );
  }


}