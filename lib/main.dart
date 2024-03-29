import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/category/category_screens/servicepro_screen.dart';
import 'package:ignition_lab4/src/view/category/category_screens/startup_screen.dart';
import 'package:ignition_lab4/src/view/home_screen/create_group.dart';

import 'package:ignition_lab4/src/view/home_screen/home_screen.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
