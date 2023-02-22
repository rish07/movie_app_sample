import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/app_colors.dart';

class MovieTitleWidget extends StatelessWidget {
  final String movieName;
  const MovieTitleWidget({
    super.key,
    required this.movieName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      movieName,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.cetaceanBlue,
      ),
      textAlign: TextAlign.center,
    );
  }
}
