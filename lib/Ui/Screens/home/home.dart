import 'package:flutter/material.dart';
import 'package:schema/Ui/Screens/home/scaffold/home_scaffold.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';
import 'package:schema/Ui/Widgets/form_fields/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      body: CustomScaffoldMainContainer(
        child: Container(
          margin: const EdgeInsets.only(bottom: 70),
          child: SingleChildScrollView(
            child: Wrap(
              runSpacing: 20,
              children: [
                CustomTextFormField(labelText: 'Fixed Acidity'),
                CustomTextFormField(labelText: 'Volatile acidity'),
                CustomTextFormField(labelText: 'Citric acid'),
                CustomTextFormField(labelText: 'Residual sugar'),
                CustomTextFormField(labelText: 'Chlorides'),
                CustomTextFormField(labelText: 'Free sulfur dioxide'),
                CustomTextFormField(labelText: 'Total sulfur dioxide'),
                CustomTextFormField(labelText: 'Density'),
                CustomTextFormField(labelText: 'PH'),
                CustomTextFormField(labelText: 'Sulphates'),
                CustomTextFormField(labelText: 'Alcohol'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
