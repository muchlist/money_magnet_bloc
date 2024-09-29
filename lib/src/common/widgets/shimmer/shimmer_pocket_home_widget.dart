import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/theme/ui_helper.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_text_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPocketHomeWidget extends StatelessWidget {
  const ShimmerPocketHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: screenWidthPercentage(context, percent: 35 / 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColor.greyColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              placeholderShimmerText(30, customHeight: 30),
              const Spacer(),
              placeholderShimmerText(100, customHeight: 20),
              const Spacer(),
              placeholderShimmerText(60, customHeight: 20)
            ],
          ),
        ),
      ),
    );
  }
}
