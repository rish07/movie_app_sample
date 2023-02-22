import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lenskart_test/commons/app_colors.dart';
import 'package:lenskart_test/commons/theme/app_theme.dart';

class TextThemeHelper {
  static ThemeData theme = AppThemes.getTheme();

  static TextStyle black_8_400 = theme.textTheme.bodyLarge!.copyWith(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );

  static TextStyle cetaceanBlue_24_600 = black_8_400.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.cetaceanBlue,
  );

  static TextStyle manatee_14_400 = black_8_400.copyWith(
    fontSize: 14,
    color: AppColors.manatee,
  );

  static TextStyle americanBlue_14_500 = black_8_400.copyWith(
    fontSize: 14,
    color: AppColors.americanBlue,
    fontWeight: FontWeight.w500,
  );

  static TextStyle cetaceanBlue_18_500 = black_8_400.copyWith(
    fontSize: 18,
    color: AppColors.cetaceanBlue,
    fontWeight: FontWeight.w500,
  );

  static TextStyle rhythm_14_400 = black_8_400.copyWith(
    fontSize: 14,
    color: AppColors.rhythm,
    fontWeight: FontWeight.w400,
  );

  static TextStyle cetaceanBlue_12_500 = black_8_400.copyWith(
    fontSize: 12,
    color: AppColors.cetaceanBlue,
    fontWeight: FontWeight.w500,
  );

  static TextStyle manatee_12_500 = black_8_400.copyWith(
    fontSize: 12,
    color: AppColors.manatee,
    fontWeight: FontWeight.w500,
  );

  static TextStyle americanBlue_10_500 = black_8_400.copyWith(
    fontSize: 10,
    color: AppColors.americanBlue,
    fontWeight: FontWeight.w500,
  );

  static TextStyle manatee_8_400 = black_8_400.copyWith(
    color: AppColors.manatee,
  );

  static TextStyle white_12_500 = black_8_400.copyWith(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle manatee_10_400 = black_8_400.copyWith(
    color: AppColors.manatee,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle cetaceanBlue_28_600 = black_8_400.copyWith(
    color: AppColors.cetaceanBlue,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
}
