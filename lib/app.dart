import 'package:flutter/material.dart';
import 'style.dart';
import 'routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.get(),
      theme: Style.data(),
    );
  }
}
