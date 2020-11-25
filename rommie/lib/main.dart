import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rommie/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rommie',
        home: Home(),
        theme: ThemeData(
          primaryColor: Color(0xFF2F008E),
          accentColor: Color(0xFFFDD303),
        ));
  }
}
