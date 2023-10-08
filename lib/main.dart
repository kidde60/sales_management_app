import 'package:flutter/material.dart';
// import 'package:sales_management_app/screens/home_page.dart';
import 'package:sales_management_app/screens/item_screen.dart';
import 'package:sales_management_app/utils/them.dart';

// import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const ItemScreen(),
    );
  }
}
