import 'package:flutter/material.dart';
import 'package:schema/Domain/Models/Wine.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({Key? key, required this.prediction, required this.wine}) : super(key: key);
  final String prediction;
  final Wine wine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffoldMainContainer(
        child: Text(prediction),
      ),
    );
  }
}
