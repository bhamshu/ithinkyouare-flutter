import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/category.dart';

class ConnectionsDashboard extends StatelessWidget {
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
        title: Text('Shreya'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://example.com/circular_image.jpg'), // Replace with your circular image URL
                radius: 50.0,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Category(category: 'Received'),
            ), // Assuming 'Received' as an example category
          ],
        ),
      ),
    );
  }
}
