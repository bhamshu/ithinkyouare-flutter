// custom_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/leaf_components/cue.dart';

class ExpandedCuesPage extends StatelessWidget {
  final String title;

  ExpandedCuesPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Cue(emoji: '😊', text: 'Friendly Cue'),
            SizedBox(height: 16.0),
            Cue(emoji: '🎉', text: 'Celebratory Cue'),
            // Add more Cue components as needed with different emojis and texts
          ],
        ),
      ),
    );
  }
}
