import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/wel.webp',
              height: height * 0.6,
            ),
            const Text(
              'Welcome to our online sales management system where all sales, profits and losses are managed in a single place.',
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {}, child: Text('Login'.toUpperCase()))),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('signup'.toUpperCase())))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
