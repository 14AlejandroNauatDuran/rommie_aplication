import 'package:flutter/material.dart';
//import 'package:path/path.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roommie'),
      ),
      body: new Center(
        ///trabajar para boton crear anuncio
        child: Column(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/anuncios'); //modificación
              },
              child: Icon(Icons.add),
              elevation: (1.0),
              backgroundColor: Colors.purple,
            ),
            //child: RaisedButton(
            //onPressed: () {
            // Navigator.of(context).pushNamed('/detail'); //modificación
            //},
            //child: new Text('Publicar Habitación'),
            //),
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Jose'),
            accountEmail: Text('jose@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Text('J', style: TextStyle(fontSize: 40.0)),
            ),
          ),
          ListTile(
              title: Text('Tu perfil'),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                Navigator.pushNamed(context, '/perfil');
              }),
          ListTile(
            title: Text('Mis anuncios'),
            leading: Icon(Icons.speaker_group),
            onTap: () {
              Navigator.pushNamed(context, '/anuncios');
            },
          ),
          ListTile(
            title: Text('Ayuda'),
            leading: Icon(Icons.question_answer_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text('Cerrar Sesión'),
            leading: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pushNamed(context, '/login'); //modificación
            },
          )
        ],
      )),
    );
  }
}
