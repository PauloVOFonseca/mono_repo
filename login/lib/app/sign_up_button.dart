import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final String textToClick;
  final TextStyle? textStyleToClick;
  final Function()? onTap;
  const SignUpButton({
    Key? key,
    required this.text,
    this.textStyle,
    required this.textToClick,
    this.textStyleToClick,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(text: text, style: textStyle),
          TextSpan(
            text: textToClick,
            style: textStyleToClick,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
