import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:menem_social_media/constants.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.text,
    required this.buttonText,
  });

  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 17,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: SizedBox(width: width * 0.02),
          ),
          TextSpan(
            text: buttonText,
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}