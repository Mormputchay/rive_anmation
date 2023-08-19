import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController controller;
  final String icons;
  final ValueChanged<String>? onFieldSubmitted;
  final bool obscureText;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final FormFieldSetter onSaved;
  final Widget? right;
  final String placeholder;
  const RoundTextField({
    super.key,
    required this.icons,
    this.validator,
    required this.onSaved,
    this.obscureText = false,
    this.focusNode,
    this.right,
    this.onFieldSubmitted,
    required this.placeholder,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      onSaved: onSaved,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: placeholder,
        suffixIcon: right,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SvgPicture.asset(icons),
        ),
      ),
    );
  }
}
