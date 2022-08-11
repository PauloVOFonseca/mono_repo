import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Function()? onTap;
  const ForgotPasswordButton({
    Key? key,
    required this.text,
    this.textStyle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
