import 'package:flutter/material.dart';

import 'package:schema/Infrastructure/Mixins/TypeMixin.dart';
import 'package:schema/Ui/Screens/home/scaffold/home_scaffold.dart';
import 'package:schema/Ui/Widgets/containers/custom_scaffold_main_container.dart';
import 'package:schema/Ui/Widgets/form_fields/custom_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  Map<String, TextEditingController> _controllers = {};

  late Map<String, Object> _results = {};

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
  void initState() {
    super.initState();
  }

  void _onPressed() {
    if (!_formKey.currentState!.validate()) throw Exception();
    _controllers.forEach((label, controller) {
      _results[label.toLowerCase().replaceAll(' ', '_')] = controller.text;
    });

    print(_results);
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreenScaffold(
      onPressed: _onPressed,
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
                    validator: (v) {
                      if (!TypeMixin.isNumeric(v)) return "Must be a number";
                    },
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
