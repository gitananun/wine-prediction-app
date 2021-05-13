import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:schema/Ui/Widgets/buttons/custom_primary_text_button.dart';

class HomeScreenScaffold extends StatelessWidget {
  const HomeScreenScaffold({
    Key? key,
    required this.body,
    required this.isLoading,
    required this.onPressed,
  }) : super(key: key);
  final Widget body;
  final bool isLoading;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Wine Prediction'),
        textTheme: Theme.of(context).textTheme,
        leading: Icon(FontAwesomeIcons.questionCircle, color: _themeData.accentColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(FontAwesomeIcons.heart, color: _themeData.errorColor),
          )
        ],
      ),
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomPrimaryTextButton(
          text: 'Predict',
          onPressed: onPressed,
          textWidget: isLoading ? CircularProgressIndicator(backgroundColor: Colors.white, strokeWidth: 2) : null,
        ),
      ),
      bottomNavigationBar: Container(height: 20),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: body,
    );
  }
}
