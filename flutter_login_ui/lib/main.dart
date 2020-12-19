import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/DetailTodoScreen.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
<<<<<<< HEAD
import 'package:flutter_login_ui/screens/perfil.dart';
=======
//import 'package:flutter_login_ui/screens/perfil.dart';
>>>>>>> e39837aca3fd594491df748f3f2ca8e827bf5dea

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
<<<<<<< HEAD
        '/perfil': (context) => Perfil(),
=======
        // '/Perfil': (context) => Perfil(),
>>>>>>> e39837aca3fd594491df748f3f2ca8e827bf5dea
      },
      initialRoute: '/login',
    );
  }
}
