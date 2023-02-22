import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/app_colors.dart';

class MovieRatingWidget extends StatelessWidget {
  final double movieRating;
  const MovieRatingWidget({
    super.key,
    required this.movieRating,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      movieRating.toString(),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.cetaceanBlue,
      ),
    );
  }
}
