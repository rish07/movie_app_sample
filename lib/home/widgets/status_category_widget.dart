import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lenskart_test/commons/carousel/fan_corousel.dart';
import 'package:lenskart_test/commons/navigation/router.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/widgets/custom_action_chip.dart';
import 'package:lenskart_test/commons/widgets/movie_rating_widget.dart';
import 'package:lenskart_test/commons/widgets/movie_title_widget.dart';
import 'package:lenskart_test/home/cubit/home_cubit.dart';
import 'package:lenskart_test/home/models/movie_model.dart';
import 'package:lenskart_test/resources/resources.dart';

class StatusCategoryWidget extends StatefulWidget {
  const StatusCategoryWidget({Key? key}) : super(key: key);

  @override
  State<StatusCategoryWidget> createState() => _StatusCategoryWidgetState();
}

class _StatusCategoryWidgetState extends State<StatusCategoryWidget> {
  ValueNotifier<int> currentMovieIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (List<MovieModel>? allMovies) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: SizedBox(
                    height: 10.w,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CustomActionChip(
                          text: "Action",
                        ),
                        CustomActionChip(
                          text: "Crime",
                        ),
                        CustomActionChip(
                          text: "Comedy",
                        ),
                        CustomActionChip(
                          text: "Drama",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                FanCarouselImageSlider(
                  onTap: () {
                    context.push(
                      RouteNames.detail,
                      extra: allMovies?[currentMovieIndex.value],
                    );
                  },
                  isClickable: false,
                  sidesOpacity: 0.6,
                  currentIndexListener: currentMovieIndex,
                  imagesLink: List.generate(allMovies?.length ?? 3, (index) {
                    switch (index % 3) {
                      case 0:
                        return Images.movieCover;
                      case 1:
                        return Images.movieCover2;
                      default:
                        return Images.movieCover3;
                    }
                  }),
                  isAssets: true,
                  autoPlay: false,
                  sliderHeight: 110.w,
                  showIndicator: false,
                ),
                ValueListenableBuilder(
                  valueListenable: currentMovieIndex,
                  builder:
                      (BuildContext context, int movieIndex, Widget? child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: MovieTitleWidget(
                            movieName: allMovies?[movieIndex].title ??
                                "Ford v Ferrari",
                          ),
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Svgs.star,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            MovieRatingWidget(
                              movieRating: Random().nextInt(10).toDouble(),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
