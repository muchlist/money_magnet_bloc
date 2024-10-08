import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon(
      {super.key,
      required this.iconData,
      required this.text,
      required this.tapTap,
      this.color = AppColor.primaryColor});
  final IconData iconData;
  final String text;
  final GestureTapCallback tapTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapTap,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(24)),
        child: Text.rich(TextSpan(children: <InlineSpan>[
          WidgetSpan(
              child: Icon(
            iconData,
            size: 21,
            color: Colors.white,
          )),
          TextSpan(
              text: " $text",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
        ])),
      ),
    );
  }
}
