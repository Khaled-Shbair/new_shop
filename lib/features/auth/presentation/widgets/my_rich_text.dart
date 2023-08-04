import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({
    required this.textQuestion,
    required this.textButton,
    required this.recognizer,
    super.key,
  });

  final String textQuestion;
  final String textButton;
  final TapGestureRecognizer recognizer;

  @override
  Widget build(BuildContext context) {
    return RichText(

      text: TextSpan(
        children: [
          TextSpan(
            text: textQuestion,
            style: const TextStyle(
              color: ManageColors.secondaryColor,
              fontSize: ManageFontsSizes.s16,
              fontWeight: ManageFontsWeights.w400,
            ),
          ),
          TextSpan(
            recognizer: recognizer,
            text: textButton,
            style: const TextStyle(
              color: ManageColors.primaryColor,
              fontSize: ManageFontsSizes.s16,
              fontWeight: ManageFontsWeights.w400,
            ),
          ),
        ],
      ),
    );
  }
}
