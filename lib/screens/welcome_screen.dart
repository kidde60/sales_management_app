import 'package:flutter/material.dart';
import 'package:sales_management_app/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Text('Login'.toUpperCase()))),
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
