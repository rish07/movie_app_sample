import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/theme/text_theme_helper.dart';

class CastWidget extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String designation;
  const CastWidget({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageAsset,
          height: 60,
          width: 60,
        ),
        SizedBox(
          height: 2.w,
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: 18.w,
          ),
          child: Text(
            name,
            style: TextThemeHelper.cetaceanBlue_12_500,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 1.w,
        ),
        Text(
          designation,
          style: TextThemeHelper.manatee_12_500,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
