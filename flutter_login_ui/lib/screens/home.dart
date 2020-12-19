import 'package:flutter/material.dart';
//import 'package:path/path.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rommie'),
      ),
      body: new Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/detail'); //modificación
          },
          child: new Text('ejemplo'),
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
<<<<<<< HEAD
              Navigator.pushNamed(context, '/perfil');
=======
              //  Navigator.pushNamed(context, '/Perfil'); //modificación
>>>>>>> e39837aca3fd594491df748f3f2ca8e827bf5dea
            },
          ),
          ListTile(
            title: Text('favoritos'),
            leading: Icon(Icons.star),
            onTap: () {},
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
