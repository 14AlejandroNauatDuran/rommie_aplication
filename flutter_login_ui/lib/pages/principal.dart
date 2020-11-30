import 'package:flutter/material.dart';
import 'pagina2.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  TextEditingController nameTextController;
  TextEditingController lastNameTextController;
  TextEditingController edadTextController;
  TextEditingController origenTextController;
  TextEditingController fotoTextController;
  TextEditingController fechaTextController;
  TextEditingController sexoTextController;
  TextEditingController ocupacionTextController;
  TextEditingController idiomaTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perfil")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Foto"),
              controller: fotoTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Nombre"),
              controller: nameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Apellidos"),
              controller: lastNameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Fecha de nacimiento"),
              controller: fechaTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Sexo"),
              controller: sexoTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Ocupacion"),
              controller: ocupacionTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Idioma"),
              controller: idiomaTextController,
            ),
            RaisedButton(
              child: Text("Guardar"),
              onPressed: () {
                _showPagina2(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showPagina2(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: Pagina2Arguments(
          name: nameTextController.text,
          lastName: lastNameTextController.text,
          idioma: idiomaTextController.text,
          foto: fotoTextController.text,
          fecha: fechaTextController.text,
          ocupacion: ocupacionTextController.text,
          sexo: sexoTextController.text,
        ));
  }

  @override
  void initState() {
    //todo: implement initState
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
    ocupacionTextController = TextEditingController();
    fotoTextController = TextEditingController();
    idiomaTextController = TextEditingController();
    fechaTextController = TextEditingController();
    sexoTextController = TextEditingController();
  }

  @override
  void dispose() {
    //todo: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
    edadTextController.dispose();
    fotoTextController.dispose();
    fechaTextController.dispose();
    idiomaTextController.dispose();
    sexoTextController.dispose();
    ocupacionTextController.dispose();
  }
}
