import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schema/Domain/Actions/WinePredictAction.dart';

import 'package:schema/Infrastructure/Validators/EmptyValidator.dart';
import 'package:schema/Ui/Screens/home/scaffold/home_scaffold.dart';
import 'package:schema/Ui/Screens/prediction/prediction.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';
import 'package:schema/Ui/Widgets/form_fields/custom_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  late Map<String, Object> _results = {};
  final _formKey = GlobalKey<FormState>();
  Map<String, TextEditingController> _controllers = {};
  final WinePredictAction _winePredictAction = WinePredictAction();

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

  void _onPressed() async {
    HapticFeedback.mediumImpact();
    if (_formKey.currentState!.validate()) {
      _controllers.forEach((label, controller) {
        _results[label.toLowerCase().replaceAll(' ', '_')] = double.parse(controller.text);
      });

      setState(() => isLoading = true);
      Map<String, dynamic> response = await _winePredictAction.predict(_results).whenComplete(
            () => setState(() => isLoading = !isLoading),
          );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => PredictionScreen(
            attributes: _results,
            prediction: response,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      onPressed: _onPressed,
      isLoading: isLoading,
      body: CustomScaffoldMainContainer(
        child: Container(
          margin: const EdgeInsets.only(bottom: 70),
          child: Form(
            key: _formKey,
            child: ListView.builder(
              itemCount: _attributes.length,
              addAutomaticKeepAlives: true,
              itemBuilder: (BuildContext context, int i) {
                String _label = _attributes[i];
                TextEditingController _controller = _controllers.putIfAbsent(_label, () => TextEditingController());

                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: CustomTextFormField(
                    controller: _controller,
                    labelText: _label,
                    validator: (v) => EmptyValidator().check(v),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
