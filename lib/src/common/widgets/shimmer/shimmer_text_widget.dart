import 'package:flutter/material.dart';

Widget placeholderShimmerText(double width, {double customHeight = 12}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      height: customHeight,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}
