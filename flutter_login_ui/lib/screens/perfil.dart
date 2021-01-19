import 'package:flutter/material.dart';
import 'package:flutter_login_ui/base/note1.dart';
import 'package:flutter_login_ui/db/operation1.dart';

class Perfil extends StatelessWidget {
  static const String ROUTE = "/perfil";

  final _formKey = GlobalKey<FormState>();
  final nomController = TextEditingController();
  final apController = TextEditingController();
  final amController = TextEditingController();
  final genController = TextEditingController();
  final ocuController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Note1 note = ModalRoute.of(context).settings.arguments;
    _init(note);

    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _buildForm(note),
      ),
    );
  }

  _init(Note1 note) {
    nomController.text = note.nom;
    apController.text = note.ap;
    amController.text = note.am;
    genController.text = note.gen;
    ocuController.text = note.ocu;
  }

  Widget _buildForm(Note1 note) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                  "assets/logos/usuario.png",
                  height: 200,
                ),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: nomController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Nombre",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: apController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Apellido Paterno",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: amController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Apellido Materno",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: genController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Genero",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: ocuController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Ocupacion",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              RaisedButton(
                child: Text("Guardar"),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    if (note.id != null) {
                      // actualizacion
                      note.nom = nomController.text;
                      note.ap = apController.text;
                      note.am = amController.text;
                      note.gen = genController.text;
                      note.ocu = ocuController.text;
                      Operation1.update(note);
                    } else {
                      // insercion
                      Operation1.insert(Note1(
                          nom: nomController.text,
                          ap: apController.text,
                          am: amController.text,
                          gen: genController.text,
                          ocu: ocuController.text));
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}