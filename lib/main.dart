import 'package:app_example/presentation/presentation.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PocApp());
}

class PocApp extends StatelessWidget with BaseApp {
  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Poc micro-apps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/example',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        AppExamplePresentation(),
      ];
}
