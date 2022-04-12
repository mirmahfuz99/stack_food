import 'package:flutter/cupertino.dart';

const Color mPrimaryColor = Color(0xFF3898FC);
const Color mBlackColor = Color(0xFF323232);
const Color mSemiBlackColor = Color(0xFF72777B);
const Color mDarkGreyColor = Color(0xFFBBBFC3);
const Color mWhiteColor = Color(0xFFFFFFFF);
const Color redColor = Color(0xFFFF1010);
const courseShadowColor = Color(0x0f000000);
const courseBGColor = Color(0xFFFDF1EB);

const LinearGradient mLinearGradient = LinearGradient(
    begin: FractionalOffset(0.0, 0.0),
    end: FractionalOffset(1.0, 1.0),
    stops: [
      0.2,
      0.4,
      1.0,
    ],
    tileMode: TileMode.clamp,
    colors: [Color(0xFFECFEFC), Color(0xFFFBFDFD), Color(0xFFECEFF1)]);