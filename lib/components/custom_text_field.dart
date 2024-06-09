import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textController,
    this.hintText,
    this.obscureText = false,
    this.labelText,
    this.inputType,
    this.onChanged,
  });

  final TextEditingController? textController;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final TextInputType? inputType;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: inputType, // null operator ??
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20, bottom: 32),
        border: InputBorder.none,
        hintText: hintText,
        labelText: labelText,
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: greyColor, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: greyColor, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}
