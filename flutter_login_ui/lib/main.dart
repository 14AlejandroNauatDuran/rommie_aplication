import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/DetailTodoScreen.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/perfil.dart';
<<<<<<< HEAD
=======

//import 'package:flutter_login_ui/screens/perfil.dart';
>>>>>>> 7d704d805b892b45f755b16e101053a10066228b

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
<<<<<<< HEAD
=======

        // '/Perfil': (context) => Perfil(),
>>>>>>> 7d704d805b892b45f755b16e101053a10066228b
      },
      initialRoute: '/login',
    );
  }
}
