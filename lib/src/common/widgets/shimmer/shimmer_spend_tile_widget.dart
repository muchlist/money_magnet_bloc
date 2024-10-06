import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_text_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSpendTileWidget extends StatelessWidget {
  const ShimmerSpendTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
          padding: const EdgeInsets.all(8),
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColor.greyColor,
              width: 1.0,
            ),
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                placeholderShimmerText(30, customHeight: 30),
                gapW12,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    placeholderShimmerText(150, customHeight: 14),
                    gapH4,
                    placeholderShimmerText(50),
                    gapH4,
                    placeholderShimmerText(100),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    placeholderShimmerText(70),
                    gapH4,
                    placeholderShimmerText(40),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
