import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/images/wel.webp'),
            const Text(
                'Welcome to our online sales management system where all sales, profits and losses are managed in a single place.'),
            OutlinedButton(onPressed: () {}, child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
