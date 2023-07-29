import 'package:flutter/material.dart';
import 'package:material_flutter_app/imageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  State<MaterialFlutterApp> createState() => _MaterialFlutterAppState();
}

class _MaterialFlutterAppState extends State<MaterialFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageWidgetApp(),
    );
  }
}
