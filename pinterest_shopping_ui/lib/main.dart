import 'package:flutter/material.dart';
import 'package:pinterest_shopping_ui/screen/decor_screen.dart';
import 'package:pinterest_shopping_ui/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/register': (_) => const DecorScreen(),
      },
    );
  }
}
