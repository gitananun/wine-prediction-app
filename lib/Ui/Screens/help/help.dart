import 'package:flutter/material.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Help'),
        backgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: CustomScaffoldMainContainer(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Text(
            'Wine Prediction App provides user-friendly interface to fill in the attributes of wine and gain information in terms of percantage compared with huge data from different countries and wine factories.',
            style: _themeData.textTheme.caption?.copyWith(height: 1.6),
          ),
        ),
      ),
    );
  }
}
