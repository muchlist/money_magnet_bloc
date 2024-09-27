import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_text_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPocketWidget extends StatelessWidget {
  const ShimmerPocketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
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
          child: _buildShimmerEffect(),
        ),
      ),
    );
  }

// jadikan shimmer yang ini didepan didalam stack
  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          placeholderShimmerText(60, customHeight: 30),
          const Spacer(),
          placeholderShimmerText(100, customHeight: 20),
          const SizedBox(height: 8),
          placeholderShimmerText(60, customHeight: 20)
        ],
      ),
    );
  }
}
