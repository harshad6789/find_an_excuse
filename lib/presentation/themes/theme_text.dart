import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_constants.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _quicksandTextTheme => GoogleFonts.quicksandTextTheme();

  static TextStyle? get _whiteHeadline6 =>
      _quicksandTextTheme.headline6?.copyWith(
        fontSize: Sizes.dimen_24.sp,
        color: Colors.white54,
      );

  static TextStyle? get _whiteHeadline5 =>
      _quicksandTextTheme.headline5?.copyWith(
        fontSize: Sizes.dimen_16.sp,
        color: Colors.white,
      );

  static TextStyle? get _whiteSubtitle1 =>
      _quicksandTextTheme.subtitle1?.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.white,
      );

  static TextStyle? get _whiteSubtitle2 =>
      _quicksandTextTheme.subtitle1?.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.black,
      );

  static TextStyle? get _whiteButton => _quicksandTextTheme.button?.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.white,
      );

  static TextStyle? get _whiteBodyText2 =>
      _quicksandTextTheme.bodyText2?.copyWith(
        color: Colors.white.withOpacity(0.7),
        fontSize: Sizes.dimen_10.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle? get _blackHeadline6 =>
      _whiteHeadline6?.copyWith(color: Colors.black);

  static TextStyle? get _blackHeadline5 =>
      _whiteHeadline5?.copyWith(color: Colors.black);

  static TextStyle? get _blackSubtitle1 =>
      _whiteSubtitle1?.copyWith(color: Colors.grey.shade800);

  static TextStyle? get _blackSubtitle2 =>
      _whiteSubtitle2?.copyWith(color: Colors.white);

  static TextStyle? get _blackBodyText2 =>
      _whiteBodyText2?.copyWith(color: Colors.black.withOpacity(0.7));

  static getDarkTextTheme() => TextTheme(
        headline5: _blackHeadline5,
        headline6: _blackHeadline6,
        subtitle1: _whiteSubtitle1,
        subtitle2: _whiteSubtitle2,
        bodyText2: _blackBodyText2,
        button: _whiteButton,
      );

  static getLightTextTheme() => TextTheme(
        headline5: _whiteHeadline6,
        headline6: _whiteHeadline5,
        subtitle1: _blackSubtitle1,
        subtitle2: _blackSubtitle2,
        bodyText2: _whiteBodyText2,
        button: _whiteButton,
      );
}
