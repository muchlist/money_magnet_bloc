import 'package:flutter/material.dart';

class CustomCirlceButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final String tooltip;

  const CustomCirlceButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.tooltip = '',
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(28),
          child: Container(
            width: 56, // ukuran standar untuk FAB
            height: 56,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, // warna dari tema
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.24),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: IconTheme(
              data: const IconThemeData(
                color: Colors.white,
              ),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
