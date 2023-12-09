// cue.dart

import 'package:flutter/material.dart';

class Cue extends StatelessWidget {
  final String emoji;
  final String text;

  Cue({required this.emoji, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            emoji,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(width: 16.0),
          Text(text),
        ],
      ),
    );
  }
}
