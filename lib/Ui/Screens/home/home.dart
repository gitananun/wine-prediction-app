import 'package:flutter/material.dart';
import 'package:schema/Ui/Screens/home/scaffold/home_scaffold.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';
import 'package:schema/Ui/Widgets/form_fields/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> _attributes = [
    'Fixed Acidity',
    'Volatile acidity',
    'Citric acid',
    'Residual sugar',
    'Chlorides',
    'Free sulfur dioxide',
    'Total sulfur dioxide',
    'Density',
    'PH',
    'Sulphates',
    'Alcohol',
  ];

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      body: CustomScaffoldMainContainer(
        child: Container(
          margin: const EdgeInsets.only(bottom: 70),
          child: ListView.builder(
            itemCount: _attributes.length,
            addAutomaticKeepAlives: true,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: CustomTextFormField(labelText: _attributes[i]),
              );
            },
          ),
        ),
      ),
    );
  }
}
