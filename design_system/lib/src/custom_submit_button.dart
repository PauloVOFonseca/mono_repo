import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Function()? onTap;
  final String text;
  final TextStyle textStyle;
  final BoxBorder? boxBorder;
  final BorderRadiusGeometry? borderRadiusGeometry;
  const CustomSubmitButton({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    this.onTap,
    required this.text,
    required this.textStyle,
    this.boxBorder,
    this.borderRadiusGeometry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: height,
        height: width,
        decoration: BoxDecoration(
          color: color,
          border: boxBorder,
          borderRadius: borderRadiusGeometry,
        ),
        child: Center(child: Text(text, style: textStyle)),
      ),
    );
  }
}
