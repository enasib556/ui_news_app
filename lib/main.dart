import 'package:flutter/material.dart';
import 'package:news_app_itit/screens/news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: News(),
    );
  }
}
