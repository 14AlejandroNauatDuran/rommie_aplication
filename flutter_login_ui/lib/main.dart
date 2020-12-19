import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/DetailTodoScreen.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/perfil.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roomitum',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(),
        '/catalogo': (context) => Home(),
        '/detail': (context) => DetailTodoScreen(),
        '/perfil': (context) => Perfil(),
      },
      initialRoute: '/login',
    );
  }
}
