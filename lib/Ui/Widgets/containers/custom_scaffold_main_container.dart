import 'package:flutter/material.dart';

class CustomScaffoldMainContainer extends StatelessWidget {
  const CustomScaffoldMainContainer({
    Key? key,
    required this.child,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: alignment,
      child: child,
    );
  }
}
