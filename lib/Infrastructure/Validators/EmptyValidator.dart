import 'package:schema/Infrastructure/Validators/AbstractValidator.dart';

class EmptyValidator implements AbstractValidator {
  @override
  String? check(value) {
    if (value.isEmpty) return 'Cannot be empty';
  }
}
