import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/connections_dashboard.dart';
import 'package:flutter_app/pages/dashboard/your_dashboard.dart';
import 'package:flutter_app/pages/send/compliment_sent.dart';
import 'package:flutter_app/pages/send/send_compliment.dart';
import 'package:flutter_app/pages/send/share_screen.dart';
import 'package:flutter_app/pages/signup.dart';
import 'pages/collect_compliment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConnectionsDashboard(),
    );
  }
}
