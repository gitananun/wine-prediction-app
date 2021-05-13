import 'package:flutter/material.dart';
import 'package:schema/Ui/Screens/prediction/scaffold/prediction_scaffold.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:schema/Infrastructure/Extensions/StringExtension.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({Key? key, required this.prediction, required this.attributes}) : super(key: key);
  final Map<String, dynamic> attributes;
  final Map<String, dynamic> prediction;

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final double _value = prediction['value'].toDouble();

    return PredictionScaffold(
      body: CustomScaffoldMainContainer(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircularPercentIndicator(
                lineWidth: 4,
                radius: 220.0,
                animation: true,
                animationDuration: 2000,
                progressColor: _themeData.primaryColor,
                percent: _value / 10,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: _themeData.accentColor.withOpacity(0.4),
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${_value * 10}%',
                      style: _themeData.textTheme.headline5?.apply(color: _themeData.primaryColor),
                    ),
                    Text(
                      'quality percantage',
                      style: _themeData.textTheme.caption?.apply(fontSizeDelta: -5, color: _themeData.accentColor),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: ListView.separated(
                  shrinkWrap: false,
                  itemCount: attributes.length,
                  separatorBuilder: (_, __) => Divider(height: 0),
                  itemBuilder: (BuildContext context, int i) => ListTile(
                    title: Text(
                      attributes.entries.elementAt(i).key.replaceAll('_', ' ').capitalizeFirstofEach,
                      style: _themeData.textTheme.caption?.apply(fontWeightDelta: 1),
                    ),
                    leading: CircleAvatar(backgroundColor: _themeData.primaryColor, radius: 10),
                    minLeadingWidth: 0,
                    trailing: Text(attributes.entries.elementAt(i).value.toString()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
