import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/app_colors.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';

class CustomActionChip extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const CustomActionChip({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 12,
        ),
        margin: EdgeInsets.only(
          right: 2.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.cetaceanBlue.withOpacity(
              0.15,
            ),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextThemeHelper.americanBlue_14_500,
          ),
        ),
      ),
    );
  }
}
