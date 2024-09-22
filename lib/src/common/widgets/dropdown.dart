import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/text.dart';

part 'dropdown.freezed.dart';

@freezed
abstract class DropdownItem<T> with _$DropdownItem<T> {
  const factory DropdownItem(
    String id,
    String value,
    T additionalData,
  ) = _DropdownItem<T>;
}

class AppDropdownTWidget<T extends Object?> extends StatelessWidget {
  final String title;
  final DropdownItem<T>? selectedItem;
  final Function(DropdownItem<T>?)? onChanged;
  final VoidCallback? onDisableTap;
  final List<DropdownItem<T>> items;
  final Widget? icon;

  const AppDropdownTWidget({
    super.key,
    required this.title,
    required this.selectedItem,
    required this.onChanged,
    this.onDisableTap,
    required this.items,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.medium('${title.toUpperCase()}:',
              color: MyColors.primaryColor),
          gapH8,
          GestureDetector(
            onTap: () {
              if (items.isEmpty && onDisableTap != null) {
                onDisableTap!();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<DropdownItem<T>?>(
                    isExpanded: true,
                    icon: icon,
                    iconDisabledColor: Colors.red.shade400,
                    hint: const Text("Pilih data"),
                    value: (selectedItem != null && items.isNotEmpty)
                        ? selectedItem
                        : null,
                    items: (items.isNotEmpty)
                        ? items.map((DropdownItem<T> loc) {
                            return DropdownMenuItem<DropdownItem<T>>(
                              value: loc,
                              child: Text(loc.value),
                            );
                          }).toList()
                        : null,
                    onChanged: (items.isNotEmpty) ? onChanged : null,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
