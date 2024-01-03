import 'package:flutter/material.dart';
import 'package:tenis_app/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Flutter Demo',
      home: const Dashboard(),
    );
  }
}
