import 'package:cat_facts/color.dart';
import 'package:cat_facts/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(216, 204, 113, 119),
          useMaterial3: true,
          colorScheme: lightColorScheme),
      home: const Homescreen(),
    );
  }
}
