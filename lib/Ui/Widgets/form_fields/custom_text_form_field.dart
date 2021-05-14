import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.labelText,
    this.validator,
    this.controller,
  }) : super(key: key);
  final String? hintText;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final BorderRadius _borderRadius = BorderRadius.circular(15);
    final double _gapPadding = 3;

    return TextFormField(
      validator: validator,
      controller: controller,
      enableSuggestions: false,
      style: _themeData.textTheme.caption,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        errorStyle: _themeData.textTheme.caption?.copyWith(color: _themeData.errorColor).apply(fontSizeDelta: -3),
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        labelStyle: TextStyle(fontSize: 18),
        focusedBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: _themeData.primaryColor),
          gapPadding: _gapPadding,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: _themeData.accentColor),
          gapPadding: _gapPadding,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: _themeData.errorColor),
          gapPadding: _gapPadding,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: BorderSide(color: _themeData.errorColor),
          gapPadding: _gapPadding,
        ),
      ),
    );
  }
}
