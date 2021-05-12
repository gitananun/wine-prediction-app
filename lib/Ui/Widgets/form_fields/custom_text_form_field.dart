import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.labelText,
  }) : super(key: key);
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final BorderRadius _borderRadius = BorderRadius.circular(15);
    final double _gapPadding = 3;

    return TextFormField(
      style: _themeData.textTheme.caption,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
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
      ),
    );
  }
}