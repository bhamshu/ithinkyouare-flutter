import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/leaf_components/compliment_box.dart';

class ListOfComplimentBoxes extends StatelessWidget {
  final List<ComplimentBox> complimentBoxes;

  ListOfComplimentBoxes({required this.complimentBoxes});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var box in complimentBoxes) box,
      ],
    );
  }
}
