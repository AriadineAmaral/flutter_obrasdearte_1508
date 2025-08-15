import 'package:flutter/material.dart';
import 'package:obras_de_arte/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obras de Arte',
      initialRoute: Routes.splash,
      onGenerateRoute:  Routes.generateRoute,
    );
  }
}
