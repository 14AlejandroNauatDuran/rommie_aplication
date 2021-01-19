import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/anuncio.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'package:flutter_login_ui/screens/perfil.dart';
import 'package:flutter_login_ui/screens/formulario.dart';
import 'package:flutter_login_ui/screens/perguar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple[300],
    accentColor: Colors.deepPurple[300],
      ),
      title: 'Roomitum',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginScreen(),
        '/catalogo': (context) => Home(),
        Perfil.ROUTE: (_) => Perfil(),
        '/anuncios': (context) => Anuncio(),
        Home.ROUTE: (_) => Home(),
        Perguar.ROUTE: (_) => Perguar(),
        Formulario.ROUTE: (_) => Formulario()
      },
      initialRoute: '/login',
    );
  }
}
