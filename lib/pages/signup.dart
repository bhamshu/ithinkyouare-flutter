import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/logo.png',
              width: 100.0,
              height: 200.0,
            ),

            const SizedBox(height: 16.0), // Add some spacing

            const Text(
              'make someone\'s day',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),

            const Text(
              "Welcome to the world's compliment app",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 32.0), // Add more spacing

            // Continue with Google button
            ElevatedButton.icon(
              onPressed: () {
                // Add your Google sign-in logic here
              },
              icon: Image.asset(
                'assets/google_logo.png',
                width: 24.0,
                height: 24.0,
              ),
              label: const Text('Continue with Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
