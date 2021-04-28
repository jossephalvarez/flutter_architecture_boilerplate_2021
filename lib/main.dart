import 'package:flutter/material.dart';
import 'package:provider_architecture_boilerplate/di/Locator.dart';
import 'package:provider_architecture_boilerplate/ui/views/second/second_view.dart';

void main() async {
  await initializeDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondView(),
    );
  }
}
