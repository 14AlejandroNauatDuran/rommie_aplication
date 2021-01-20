import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'package:flutter_login_ui/base/note.dart';
import 'package:flutter_login_ui/db/operation.dart';
import 'package:flutter_login_ui/screens/formulario.dart';
import 'package:flutter_login_ui/base/note1.dart';
//import 'package:flutter_login_ui/screens/perguar.dart';
import 'package:flutter_login_ui/screens/Perfil.dart';

import 'anuncio.dart';

class Home extends StatelessWidget {
  static const String ROUTE = "/home";

  @override
  Widget build(BuildContext context) {
    return _MyList();
  }
}

class _MyList extends StatefulWidget {
  @override
  __MyListState createState() => __MyListState();
}

class __MyListState extends State<_MyList> {
  List<Note> notes = [];

  @override
  void initState() {
    _loadData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ANUNCIOS"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (_, i) => _createItem(i),
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
                  Navigator.pushNamed(context, Perfil.ROUTE,
                          arguments: Note1.empty())
                      .then((value) => setState(() {
                            _loadData();
                          }));
                }),
            ListTile(
                title: Text('Mis anuncios'),
                leading: Icon(Icons.speaker_group),
                onTap: () {
                  Navigator.pushNamed(context, Formulario.ROUTE,
                          arguments: Note.empty())
                      .then((value) => setState(() {
                            _loadData();
                          }));
                }),
            ListTile(
              title: Text('Agregar Habitacion'),
              leading: Icon(Icons.question_answer_outlined),
              onTap: () {
                Navigator.pushNamed(context, Anuncio.ROUTE,
                        arguments: Note1.empty())
                    .then((value) => setState(() {
                          _loadData();
                        }));
              },
            ),
            ListTile(
              title: Text('Cerrar Sesión'),
              leading: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.pushNamed(context, '/login'); //modificación
              },
            )
          ],
        )));
  }

  _loadData() async {
    List<Note> auxNote = await Operation.notes();

    setState(() {
      notes = auxNote;
    });
  }

  _createItem(int i) {
    return ListTile(
      key: Key(i.toString()),
      //direction: DismissDirection.startToEnd,

      title: Text(notes[i].title),
    );
  }
}
