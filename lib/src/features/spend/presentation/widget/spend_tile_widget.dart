import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/constant/category_icon.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/utils/date.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';

class SpendTileWidget extends StatelessWidget {
  const SpendTileWidget({super.key, required this.detail});

  final Spend detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 72,
        decoration: BoxDecoration(
          color: (detail.isIncome) ? AppColor.creamColor : AppColor.greyColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: AppColor.greyColor,
              blurRadius: 0.3,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              getIconCategory(detail.categoryIcon),
              style: const TextStyle(fontSize: 24),
            ),
            gapW12,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail.name,
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
                Text(
                  detail.userName,
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
                Text(
                  detail.date.toDisplay(),
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  detail.price.toCurrencyString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: (detail.isIncome)
                            ? Colors.green[400]
                            : AppColor.blackColor,
                      ),
                ),
                Text(
                  detail.categoryName,
                  style: Theme.of(context).textTheme.bodySmall!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
