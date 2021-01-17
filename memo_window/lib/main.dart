import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Memo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.white,
      ),
      home: MyHompage(title: 'Flutter Memo Home Page'),
    );
  }
}
