// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class CollectComplimentPage extends StatefulWidget {
  const CollectComplimentPage({super.key});

  @override
  _CollectComplimentPageState createState() => _CollectComplimentPageState();
}

class _CollectComplimentPageState extends State<CollectComplimentPage> {
  String apiUrl = 'YOUR_API_URL_HERE'; // Replace with your API URL

  late String category;
  late Color categoryColor;
  late String emoji;
  late String text;
  late String imageUrl;
  late String boldText;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // final response = await http.get(Uri.parse(apiUrl));
      // if (response.statusCode == 200) {
      // final data = json.decode(response.body);

      setState(() {
        category = "CUTE"; //data['category'];
        categoryColor =
            Colors.purple; //Color(int.parse(data['categoryColor'].toString()));
        emoji = "fd"; //data['emoji'];
        text = "Fsd"; //data['text'];
        imageUrl =
            "https://images.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png"; //data['imageUrl'];
        boldText = "'Collect' this compliment from Shreya"; //data['boldText'];
      });
      // } else {
      // print('Failed to load data');
      // }
    } catch (error) {
      // print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0),
                  child:
                      Image.asset('assets/logo.png', width: 200, height: 100),
                ),
              ),

              // Category
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: categoryColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  category,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),

              // "You are..."
              const Text(
                'You are...',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),

              // Emoji and Text
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Text(
                      emoji,
                      style: const TextStyle(fontSize: 40.0),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Text(
                        text,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),

              // Circular Image and Bold Text
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                          image: NetworkImage(imageUrl ?? ''),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Text(
                        boldText,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
