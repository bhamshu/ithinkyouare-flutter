import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/leaf_components/compliment_box.dart';
import 'package:flutter_app/pages/dashboard/common_components/list_of_compliment_boxes.dart';

class Category extends StatelessWidget {
  final String category;

  Category({required this.category});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(category),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Amazing'),
              Tab(text: 'Cute'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListOfComplimentBoxes(
              complimentBoxes: [
                ComplimentBox(
                  imageUrls: ['url1', 'url2', 'url3', 'url4'],
                  text: 'Amazing Compliment 1',
                ),
                // Add more ComplimentBoxes as needed
              ],
            ),
            ListOfComplimentBoxes(
              complimentBoxes: [
                ComplimentBox(
                  imageUrls: ['url5', 'url6', 'url7', 'url8'],
                  text: 'Cute Compliment 1',
                ),
                // Add more ComplimentBoxes as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
