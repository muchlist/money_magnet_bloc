import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.disabled = false,
    this.buttonColor = AppColor.primaryColor,
    this.fontColor = Colors.white,
  });

  final String title;
  final GestureTapCallback onPressed;
  final bool disabled;
  final Color buttonColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !disabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: !disabled ? buttonColor : Colors.grey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        minimumSize: const Size.fromHeight(40),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: fontColor,
        ),
      ),
    );
  }
}
