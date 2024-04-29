import 'package:facebook_ui/pallete.dart';
import 'package:facebook_ui/screens/screens.dart';
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
      title: 'Facebook',
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.scaffold,
        useMaterial3: true,
      ),
      //home: const HomeScreen(),
      home: NavScreen(),
    );
  }
}
