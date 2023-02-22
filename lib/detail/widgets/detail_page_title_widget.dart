import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';

class DetailPageTitleWidget extends StatelessWidget {
  final String text;
  const DetailPageTitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextThemeHelper.cetaceanBlue_18_500,
    );
  }
}
