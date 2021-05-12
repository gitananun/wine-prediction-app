import 'package:flutter/material.dart';
import 'package:schema/UI/enums/app_mode.dart';
import 'package:schema/app.dart';
import 'package:schema/env.dart';
import 'package:schema/main.dart';

mixin AppMixin {
  static bool getDevicePreviewStatus(AppMode appMode) => appMode == AppMode.Dev;

  static Widget get getMainAppWidget => APP_MODE == AppMode.Dev ? const App() : const AppOriginator();
}
