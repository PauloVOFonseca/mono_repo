import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? initialValue;
  final TextEditingController? controller;
  final String hintText;
  final String labelText;
  final IconData? suffixIcon;
  final String? helperText;
  final VoidCallback? onSuffixIconTap;
  final String? errorText;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    this.initialValue,
    this.controller,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.helperText,
    this.onSuffixIconTap,
    this.errorText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon != null
            ? ClipOval(
                child: Material(
                  shape: const CircleBorder(),
                  color: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      suffixIcon,
                      size: 26,
                    ),
                    onPressed: onSuffixIconTap,
                  ),
                ),
              )
            : null,
        helperText: helperText,
        errorText: errorText,
      ),
    );
  }
}
