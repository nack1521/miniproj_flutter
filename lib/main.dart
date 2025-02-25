import 'package:flutter/material.dart';
import 'package:final_proj/_pageMain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          appBarTheme: AppBarTheme(backgroundColor: Colors.grey)),
      home: PageMain(),
    );
  }
}
