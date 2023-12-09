import 'package:flutter/material.dart';
import 'package:flutter_app/pages/dashboard/common_components/dashboard.dart';

class YourDashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 120.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/logo.png'), // Replace with your logo image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://example.com/circular_image.jpg'), // Replace with your circular image URL
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  'Welcome to Your Dashboard',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Handle send button press
                  },
                  child: Text('Send'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
