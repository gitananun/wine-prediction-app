import 'package:flutter/material.dart';

class CustomBackLeadingButton extends StatelessWidget {
  const CustomBackLeadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.maybePop(context),
    );
  }
}
