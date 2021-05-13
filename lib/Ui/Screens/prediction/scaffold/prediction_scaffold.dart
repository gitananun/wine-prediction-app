import 'package:flutter/material.dart';

class PredictionScaffold extends StatelessWidget {
  const PredictionScaffold({Key? key, required this.body}) : super(key: key);
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Insights'),
        textTheme: Theme.of(context).textTheme,
      ),
      body: body,
    );
  }
}
