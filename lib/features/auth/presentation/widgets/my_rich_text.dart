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
            style: Theme.of(context).textTheme.displayMedium,
          ),
          TextSpan(
            recognizer: recognizer,
            text: textButton,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
