import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';

class MovieDetailItem extends StatelessWidget {
  final String text;
  const MovieDetailItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextThemeHelper.manatee_14_400,
    );
  }
}
