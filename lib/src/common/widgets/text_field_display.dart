import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/widgets/text.dart';

class CustomTextDisplay extends StatelessWidget {
  final String text;
  final String label;
  final bool showLabel;
  final Color? fillColor;

  const CustomTextDisplay({
    super.key,
    required this.text,
    required this.label,
    this.showLabel = false,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
          label: (showLabel)
              ? AppText.medium(
                  label,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                )
              : null,
          hintText: label,
          filled: true,
          fillColor: fillColor ?? Colors.white.withOpacity(0.5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
                    .withOpacity(0.7)), // warna border ketika tidak difokuskan
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blue), // warna border ketika difokuskan
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
              borderRadius: const BorderRadius.all(Radius.circular(5.0))),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12)),
      child: Text(
        text,
      ),
    );
  }
}
