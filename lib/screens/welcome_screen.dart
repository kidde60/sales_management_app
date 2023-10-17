import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Management System'),
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Positioned(
              width: MediaQuery.sizeOf(context).width,
              top: 10,
              child: const Text(
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  'Welcome  to online sales management system created by George  William Kidde'),
            ),
            Positioned(
              bottom: -300,
              child: Image.asset(
                // width: MediaQuery.sizeOf(context).width,
                'assets/images/sale.webp',
              ),
            ),
          ],
        ),
      ),
      // body: Stack(
      //   children: [
      //     // const SizedBox(
      //     //   height: 20,
      //     // ),
      //     const Positioned(
      //       top: 80,
      //       left: 20,
      //       child: Text(
      //           'Welcome  to online sales management system created by George  William Kidde'),
      //     ),
      //     SizedBox(
      //       width: MediaQuery.sizeOf(context).width,
      //       child: Image.asset(
      //         'assets/images/sale.webp',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
