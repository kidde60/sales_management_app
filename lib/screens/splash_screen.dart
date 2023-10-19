import 'package:flutter/material.dart';
import 'package:sales_management_app/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

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
            AnimatedPositioned(
              width: MediaQuery.sizeOf(context).width,
              top: animate ? 20 : -30,
              duration: const Duration(milliseconds: 2000),
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 3000),
                child: const Text(
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    'Welcome  to online sales management system created by George  William Kidde'),
              ),
            ),
            AnimatedPositioned(
              bottom: animate ? 80 : -300,
              duration: const Duration(milliseconds: 2000),
              child: AnimatedOpacity(
                opacity: animate ? 1 : 0,
                duration: const Duration(milliseconds: 3000),
                child: Image.asset(
                  // width: MediaQuery.sizeOf(context).width,
                  'assets/images/sale.webp',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 5000));
    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
