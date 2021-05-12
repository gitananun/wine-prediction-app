import 'package:flutter/material.dart';

class CustomPrimaryTextButton extends StatelessWidget {
  const CustomPrimaryTextButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData _themeData = Theme.of(context);

    return TextButton(
      child: Text(text, style: _themeData.textTheme.button),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        backgroundColor: MaterialStateProperty.all(_themeData.primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
