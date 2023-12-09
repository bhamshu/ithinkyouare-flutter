import 'package:flutter/material.dart';

class ComplimentBox extends StatelessWidget {
  final List<String> imageUrls;
  final String text;

  ComplimentBox({required this.imageUrls, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var url in imageUrls)
                CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(text),
        ],
      ),
    );
  }
}
