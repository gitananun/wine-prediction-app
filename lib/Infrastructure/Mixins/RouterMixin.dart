import 'package:flutter/material.dart';

mixin RouterMixin {
  Route<dynamic> returnScreen(Widget screen) => MaterialPageRoute<dynamic>(builder: (_) => screen);
  Route<dynamic> registerRoutes(RouteSettings settings);
}
