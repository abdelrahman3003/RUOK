import 'dart:developer';

import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'size_config.dart';

abstract class AppStyles {
  static TextStyle style64font700black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 64),
      fontWeight: FontWeight.w700,
      fontFamily: "Manrope",
      color: AppColors.black,
    );
  }

  static TextStyle style24font700white(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontsize: 24),
        fontWeight: FontWeight.w700,
        fontFamily: "Manrope",
        color: Colors.white);
  }
  static TextStyle style24font500white(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontsize: 24),
        fontWeight: FontWeight.w500,
        fontFamily: "Manrope",
        color: Colors.white);
  }
  static TextStyle style22font500black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 22),
      fontWeight: FontWeight.w500,
      fontFamily: "Manrope",
      color: Colors.black,
    );
  }

  static TextStyle style20font300black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w300,
      fontFamily: "Manrope",
      color: const Color(0xff18161980),
    );
  }

  static TextStyle style16font300black(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w300,
      fontFamily: "Manrope",
      color: const Color(0xff18161980),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scalFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scalFactor;
  return responsiveFontSize.clamp(fontsize * .8, fontsize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  log("$width");
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 3000;
  }
}
