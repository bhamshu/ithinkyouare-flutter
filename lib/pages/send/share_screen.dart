import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for clipboard functionality

class ShareScreen extends StatelessWidget {
  // Function to copy text to clipboard
  void copyToClipboard() {
    Clipboard.setData(ClipboardData(text: 'hello world'));
  }

  // Function to open apps
  void openApp(String appName) {
    // Implement logic to open respective apps
    // For demonstration purposes, print the selected app name
    print('Opening $appName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 8.0),
            Text('Share With Nisha'),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          ElevatedButton.icon(
            onPressed: () => openApp('Whatsapp'),
            icon: Icon(Icons.whatshot),
            label: Text('Whatsapp'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton.icon(
            onPressed: () => openApp('Instagram Direct'),
            icon: Icon(Icons.camera),
            label: Text('Instagram Direct'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton.icon(
            onPressed: () => openApp('Telegram'),
            icon: Icon(Icons.send),
            label: Text('Telegram'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton.icon(
            onPressed: () => openApp('Messenger'),
            icon: Icon(Icons.message),
            label: Text('Messenger'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton.icon(
            onPressed: copyToClipboard,
            icon: Icon(Icons.content_copy),
            label: Text('Copy'),
          ),
        ],
      ),
    );
  }
}
