import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final double? letterSpacing;
  final double fontSize;

  AppText.small(
    super.data, {
    super.key,
    this.color = AppColor.textColor,
    this.fontWeight = FontWeight.normal,
    super.textAlign = TextAlign.left,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 12,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            letterSpacing: letterSpacing,
          ),
        );

  AppText.medium(
    super.data, {
    super.key,
    this.color = AppColor.textColor,
    this.fontWeight = FontWeight.w600,
    super.textAlign = TextAlign.left,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 14,
    TextDecoration textDecoration = TextDecoration.none,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            decoration: textDecoration,
            letterSpacing: letterSpacing,
          ),
        );

  AppText.big(
    super.data, {
    super.key,
    this.color = AppColor.textColor,
    this.fontWeight = FontWeight.w600,
    super.textAlign = TextAlign.left,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 18,
    TextDecoration textDecoration = TextDecoration.none,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            decoration: textDecoration,
            letterSpacing: letterSpacing,
          ),
        );

  AppText.large(
    super.data, {
    super.key,
    this.color = AppColor.textColor,
    this.fontWeight = FontWeight.bold,
    super.textAlign = TextAlign.center,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 24,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            letterSpacing: letterSpacing,
          ),
        );

  AppText.button(
    super.data, {
    super.key,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w600,
    super.textAlign = TextAlign.left,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 14,
    TextDecoration textDecoration = TextDecoration.none,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            decoration: textDecoration,
            letterSpacing: letterSpacing,
          ),
        );

  AppText.title(
    super.data, {
    super.key,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w600,
    super.textAlign = TextAlign.left,
    int? maxline,
    TextOverflow? textOverflow,
    this.height,
    this.letterSpacing,
    this.fontSize = 20,
  }) : super(
          maxLines: maxline,
          style: TextStyle(
            fontSize: fontSize,
            // fontFamily: '',
            color: color,
            height: height,
            fontWeight: fontWeight,
            overflow: textOverflow,
            letterSpacing: letterSpacing,
          ),
        );
}
