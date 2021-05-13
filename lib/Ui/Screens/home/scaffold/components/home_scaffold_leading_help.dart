import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schema/Ui/Screens/help/help.dart';

class HomeScaffoldLeadingHelp extends StatelessWidget {
  const HomeScaffoldLeadingHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HelpScreen())),
      child: Icon(
        FontAwesomeIcons.questionCircle,
        color: _themeData.accentColor,
      ),
    );
  }
}
