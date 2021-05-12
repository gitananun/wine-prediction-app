import 'package:schema/Domain/Models/Wine.dart';

class WinePredictAction {
  Wine predict(Map<String, Object> attributes) {
    return Wine.fromJson(attributes);
  }
}
