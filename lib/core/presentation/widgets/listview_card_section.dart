import 'package:flutter/material.dart';
import 'package:movie_app/core/presentation/widgets/image_with_shimmer.dart';
import 'package:movie_app/core/resources/constant/app_colors.dart';
import 'package:movie_app/core/resources/constant/app_dimensions.dart';

class ListviewCardSection extends StatelessWidget {
  const ListviewCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: AppDimensions.size120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.size8),
              child: ImageWithShimmer(
                  height: AppDimensions.size175,
                  width: double.infinity,
                  imageUrl:
                      'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Real Madrid CF: The Best Club in the World',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: AppColors.ratingIconColor,
                    size: AppDimensions.size18,
                  ),
                  Text(
                    '7.8/10',
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
