import 'package:flutter/material.dart';
import 'package:schema/Infrastructure/Exceptions/ScreenRouteNotFoundException.dart';
import 'package:schema/Infrastructure/Mixins/RouterMixin.dart';
import 'package:schema/Infrastructure/Routes/Paths.dart';

@immutable
class ScreenRouter with RouterMixin {
  ///
  @override
  Route<dynamic> registerRoutes(RouteSettings settings) {
    final routes = screenRoutes;

    if (routes.isEmpty || !routes.containsKey(settings.name)) {
      throw ScreenRouteNotFoundException(settings.name!);
    }
    return returnScreen(routes[settings.name]!);
  }
}
