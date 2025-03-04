import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/constant/app_colors.dart';
import 'package:movie_app/core/resources/constant/app_dimensions.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.title, required this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.padding4,
          horizontal: AppDimensions.padding16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.titleSmall,
          ),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  'see all',
                  style: textTheme.bodyLarge,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: AppDimensions.size12,
                  color: AppColors.primaryText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
