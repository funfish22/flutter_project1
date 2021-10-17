import 'package:first_project/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppComponent extends StatelessWidget {
  const AppComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);

    final app = MaterialApp(
      onGenerateRoute: router.generator,
    );
    return app;
  }
}