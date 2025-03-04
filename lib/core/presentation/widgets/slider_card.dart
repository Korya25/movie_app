import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/constant/app_colors.dart';
import 'package:movie_app/core/resources/constant/app_constant.dart';
import 'package:movie_app/core/resources/constant/app_dimensions.dart';
import 'package:movie_app/core/presentation/widgets/slider_card_image.dart';

/// A slider card widget that displays an image with title, date, and dot indicators
class SliderCard extends StatelessWidget {
  /// Creates a [SliderCard] with the given [imageUrl] and [itemIndex]
  const SliderCard({
    super.key,
    required this.imageUrl,
    required this.itemIndex,
  });

  /// The URL of the image to be displayed
  final String imageUrl;

  /// The current index of the slider item
  final double itemIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleCardTap,
      child: SafeArea(
        child: Stack(
          children: [
            SliderCardImage(imageUrl: imageUrl),
            _buildSliderCardContent(context),
          ],
        ),
      ),
    );
  }

  /// Handles the tap event on the slider card
  void _handleCardTap() {
    // TODO: Implement navigation or action when card is tapped
  }

  /// Builds the content of the slider card
  Widget _buildSliderCardContent(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
        right: AppDimensions.padding16,
        left: AppDimensions.padding16,
        bottom: AppDimensions.padding10,
      ),
      child: SizedBox(
        height: size.height * 0.55,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildTitle(textTheme),
            _buildDate(textTheme),
            _buildDotIndicator(),
          ],
        ),
      ),
    );
  }

  /// Builds the title text widget
  Widget _buildTitle(TextTheme textTheme) {
    return Text(
      'Title',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: textTheme.titleMedium,
    );
  }

  /// Builds the date text widget
  Widget _buildDate(TextTheme textTheme) {
    return Text(
      'Feb 13, 2023',
      style: textTheme.bodyLarge,
    );
  }

  /// Builds the dot indicator row
  Widget _buildDotIndicator() {
    return Padding(
      padding: const EdgeInsets.only(top: AppDimensions.padding4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          AppConstants.carouselSliderItemsCount,
          (indexDot) => DotIndicator(
            isActive: indexDot == itemIndex,
          ),
        ),
      ),
    );
  }
}

/// A dot indicator widget to show the current position in a slider
class DotIndicator extends StatelessWidget {
  /// Creates a [DotIndicator] with [isActive] state
  const DotIndicator({
    super.key,
    required this.isActive,
  });

  /// Determines if the dot is in an active state
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: AppDimensions.padding10),
      width: isActive ? AppDimensions.size30 : AppDimensions.size6,
      height: AppDimensions.size6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isActive ? AppColors.primary : AppColors.inactiveColor,
      ),
    );
  }
}
