import 'package:flutter/material.dart';
import 'package:schema/Ui/Screens/home/scaffold/components/home_scaffold_action_like.dart';
import 'package:schema/Ui/Screens/home/scaffold/components/home_scaffold_leading_help.dart';
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Wine Prediction'),
        textTheme: Theme.of(context).textTheme,
        leading: HomeScaffoldLeadingHelp(),
        actions: [HomeScaffoldActionLike()],
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
