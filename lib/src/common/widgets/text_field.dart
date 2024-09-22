import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_magnet_bloc/src/common/widgets/text.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscureText;
  final bool showLabel;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool? readOnly;
  final Color? fillColor;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? textInputFromater;
  final bool autoFocus;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    this.obscureText = false,
    this.showLabel = false,
    this.keyboardType,
    this.validator,
    this.initialValue,
    this.readOnly,
    this.fillColor,
    this.textCapitalization = TextCapitalization.none,
    this.textInputFromater,
    this.autoFocus = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      controller: controller,
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
          borderSide:
              BorderSide(color: Colors.blue), // warna border ketika difokuskan
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)),
            borderRadius: const BorderRadius.all(Radius.circular(5.0))),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12),
        suffixIcon: suffixIcon,
      ),
      // style: const TextStyle(fontWeight: FontWeight.bold),
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      initialValue: initialValue,
      readOnly: readOnly ?? false,
      textCapitalization: textCapitalization,
      inputFormatters: textInputFromater,
    );
  }
}
