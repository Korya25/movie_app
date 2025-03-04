import 'package:flutter/material.dart';
import 'package:movie_app/core/presentation/widgets/custom_slider.dart';
import 'package:movie_app/core/presentation/widgets/header_section.dart';
import 'package:movie_app/core/presentation/widgets/listview_card_section.dart';
import 'package:movie_app/core/presentation/widgets/listview_section.dart';
import 'package:movie_app/core/presentation/widgets/slider_card.dart';
import 'package:movie_app/core/resources/constant/app_dimensions.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MoviesWidget(),
    );
  }
}

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        // CustomSlider
        SliverToBoxAdapter(
          child: CustomSlider(
            itemBuilder: (context, itemIndex, _) => SliderCard(
              imageUrl:
                  'https://imageio.forbes.com/i-forbesimg/media/lists/teams/real-madrid_416x416.jpg?format=jpg',
              itemIndex: itemIndex.toDouble(),
            ),
          ),
        ),

        // Popular movies section
        SliverToBoxAdapter(
          child: const HeaderSection(
            title: 'Popular movies',
            onTap: null,
          ),
        ),
        SliverToBoxAdapter(
          child: ListviewSection(
            height: AppDimensions.size240,
            itemBuilder: (context, index) {
              return const ListviewCardSection();
            },
            itemCount: 10,
          ),
        ),

        // Top rated movies section
        SliverToBoxAdapter(
          child: const HeaderSection(
            title: 'Top rated movies',
            onTap: null,
          ),
        ),
        SliverToBoxAdapter(
          child: ListviewSection(
            height: AppDimensions.size240,
            itemBuilder: (context, index) {
              return const ListviewCardSection();
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
