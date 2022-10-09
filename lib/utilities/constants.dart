import 'package:flutter/material.dart';

const kGreenThemeColor = Color(0xff2AAB34);
const kPrimaryTextColor = Color(0xff222222);
const kDividerColor = Color(0xa3000000);

kNormalTextStyle(dynamic font,dynamic color,dynamic fontFamily,dynamic isBold){
  return TextStyle(
      fontFamily: fontFamily,
      fontSize: font,
      color: color,
      fontWeight: isBold ? FontWeight.bold : null
  );
}