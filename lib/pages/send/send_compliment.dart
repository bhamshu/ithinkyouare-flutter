import 'package:flutter/material.dart';

class SendComplimentPage extends StatefulWidget {
  @override
  _SendComplimentPageState createState() => _SendComplimentPageState();
}

class _SendComplimentPageState extends State<SendComplimentPage> {
  // Variables to store user input
  String whoInput = "";
  String whatInput = "";
  List<String> selectedCues = [];
  String noteInput = "";

  // Sample list of items for cues
  List<String> cueItems = [
    "Cue 1",
    "Cue 2",
    "Cue 3",
    "Cue 4",
    // Add more cues as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to Previous Page',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text('1. Who?'),
            TextFormField(
              onChanged: (value) {
                whoInput = value;
              },
            ),
            SizedBox(height: 20.0),
            Text('2. What?'),
            Row(
              children: [
                Radio(
                  value: 'Amazing',
                  groupValue: whatInput,
                  onChanged: (value) {
                    setState(() {
                      whatInput = value.toString();
                    });
                  },
                ),
                Text('Amazing'),
                SizedBox(width: 20.0),
                Radio(
                  value: 'Cute',
                  groupValue: whatInput,
                  onChanged: (value) {
                    setState(() {
                      whatInput = value.toString();
                    });
                  },
                ),
                Text('Cute'),
              ],
            ),
            SizedBox(height: 20.0),
            Text('Add up to 3 cues'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search cues...',
              ),
              onChanged: (value) {
                // Implement filtering logic here
                // You can update the displayed cues based on the search query
              },
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                itemCount: cueItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(cueItems[index]),
                    onTap: () {
                      setState(() {
                        if (selectedCues.length < 3) {
                          selectedCues.add(cueItems[index]);
                        } else {
                          // Optionally show a message that only 3 cues are allowed
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            Text('Add a note (optional)'),
            TextFormField(
              onChanged: (value) {
                noteInput = value;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement submission logic here
                // You can access the user inputs: whoInput, whatInput, selectedCues, noteInput
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
