import 'package:flutter/material.dart';

// Screen Size Helpers

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
bool screenIsPortrait(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.portrait;

double screenHeightPercentage(BuildContext context, {double percent = 1}) =>
    screenHeight(context) * percent;
double screenWidthPercentage(BuildContext context, {double percent = 1}) =>
    screenWidth(context) * percent;
