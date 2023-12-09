import 'package:flutter/material.dart';
import 'package:flutter_app/pages/signup.dart';
import 'pages/collect_compliment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignupPage(),
    );
  }
}
