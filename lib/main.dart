import 'package:app_example/presentation/presentation.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:microapps_flutter/configure_nonweb.dart'
    if (dart.library.html) 'package:microapps_flutter/configure_nonweb.dart';

void main() {
  configureApp();
  runApp(PocApp());
}

class PocApp extends StatelessWidget with BaseApp {
  PocApp() {
    super.registerRouters();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poc micro-apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      onUnknownRoute: super.generateUnknownRoute,
      initialRoute: '/',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        AppExamplePresentation(),
      ];
}
