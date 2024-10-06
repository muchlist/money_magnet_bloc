import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/constant/pocket_icon.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';

class PocketWidget extends StatelessWidget {
  const PocketWidget({
    super.key,
    required this.name,
    required this.balance,
    required this.icon,
  });

  final String name;
  final String balance;
  final int icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: AppColor.greyColor,
              blurRadius: 0.5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                getIcon(icon),
                style: const TextStyle(fontSize: 30),
              ),
              const Spacer(),
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                balance,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
