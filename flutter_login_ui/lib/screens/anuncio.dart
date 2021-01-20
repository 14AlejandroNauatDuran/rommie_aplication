import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'package:flutter_login_ui/base/note.dart';
import 'package:flutter_login_ui/db/operation.dart';
import 'package:flutter_login_ui/screens/formulario.dart';


class Anuncio extends StatelessWidget {
  static const String ROUTE = "/anuncio";

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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, Formulario.ROUTE,
                    arguments: Note.empty())
                .then((value) => setState(() {
                      _loadData();
                    }));
          },
        ),
        appBar: AppBar(
          title: Text("Anuncios Publicados"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (_, i) => _createItem(i),
          ),
        ),
        );
  }

  _loadData() async {
    List<Note> auxNote = await Operation.notes();

    setState(() {
      notes = auxNote;
    });
  }

  _createItem(int i) {
    return Dismissible(
      key: Key(i.toString()),
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Colors.red,
        padding: EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(Icons.delete, color: Colors.white),
        ),
      ),
      onDismissed: (direction) {
        print(direction);
        Operation.delete(notes[i]);
      },
      child: ListTile(
        title: Text(notes[i].title),
        trailing: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Formulario.ROUTE,
                      arguments: notes[i])
                  .then((value) => setState(() {
                        _loadData();
                      }));
            },
            child: Icon(Icons.edit)),
      ),
    );
  }
}
