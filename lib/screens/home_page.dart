import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST OF ITEMS'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const SafeArea(
          child: Column(
        children: [Text('Item 1'), Text('Item 2'), Text('Item 3')],
      )),
    );
  }
}
