import 'package:flutter/material.dart';
import 'package:schema/Infrastructure/Mixins/DeviceScreenMixin.dart';
import 'package:schema/Infrastructure/Routes/ScreenRouter.dart';
import 'package:schema/ui/mts_theme.dart';
import 'package:device_preview/device_preview.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Schema',
      initialRoute: '/',
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      onGenerateRoute: ScreenRouter().registerRoutes,
      theme: MTStheme.customThemeData(DeviceScreenMixin.getDeviceScreenSize(context)),
    );
  }
}
