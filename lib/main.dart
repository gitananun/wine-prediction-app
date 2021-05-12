import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:schema/Infrastructure/Mixins/AppMixin.dart';
import 'package:schema/env.dart';
import 'package:schema/ui/mts_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'app.dart';

void main() => runApp(
      DevicePreview(
        enabled: AppMixin.getDevicePreviewStatus(APP_MODE),
        builder: (context) => AppMixin.getMainAppWidget,
      ),
    );

class AppOriginator extends StatefulWidget {
  const AppOriginator({Key? key}) : super(key: key);

  @override
  _AppOriginatorState createState() => _AppOriginatorState();
}

class _AppOriginatorState extends State<AppOriginator> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: MTStheme.primaryColor,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(home: App());
  }
}
