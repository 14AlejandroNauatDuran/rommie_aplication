import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rommie'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Tu perfil'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Tus opciones'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Contacto'),
            onTap: () {},
          )
        ],
      )),
    );
  }
}
