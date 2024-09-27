import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class AddPocketButton extends StatelessWidget {
  const AddPocketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        color: Colors
            .deepOrange.shade200, // Change the color of the border as needed
        strokeWidth: 2.5,
        dashPattern: const [5, 5],
        radius: const Radius.circular(15),
        borderType: BorderType.RRect,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Icon(
                    LineIcons.plusCircle,
                    size: 45,
                    color: Colors.deepOrange.shade200,
                  ),
                  const Spacer(),
                  Text(
                    "Create Pocket",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
