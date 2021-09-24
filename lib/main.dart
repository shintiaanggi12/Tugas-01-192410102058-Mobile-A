import 'package:flutter/material.dart';
import 'package:project1/pages/halaman_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage(),
    );
  }
}
