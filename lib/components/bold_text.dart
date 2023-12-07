import 'package:flutter/material.dart';
import 'package:flutter_music_player/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static textBold({double fontSize = 10, Color color = Colors.white}) {
    return TextStyle(
      overflow: TextOverflow.ellipsis,
      fontFamily: FontFamily.sfProDisplay,
      fontSize: fontSize.sp,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static textSameBold({double fontSize = 10, Color color = Colors.white}) {
    return TextStyle(
      fontFamily: FontFamily.sfProDisplay,
      fontSize: fontSize.sp,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static textMedium({double fontSize = 10, Color color = Colors.white}) {
    return TextStyle(
      fontFamily: FontFamily.sfProDisplay,
      fontSize: fontSize.sp,
      overflow: TextOverflow.ellipsis,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }
}
