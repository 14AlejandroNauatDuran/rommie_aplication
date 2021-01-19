import 'package:flutter/material.dart';
import 'package:flutter_login_ui/base/note.dart';
import 'package:flutter_login_ui/db/operation.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:path/path.dart';



class Formulario extends StatelessWidget {
  static const String ROUTE = "/formulario";

  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final content1Controller = TextEditingController();
  final habiController = TextEditingController();
  final banosController = TextEditingController();
  final direcController = TextEditingController();
  final ciudadController = TextEditingController();
  final postalController = TextEditingController();
  final imagenController = TextEditingController();
  final extrasController = TextEditingController();
  final mapsController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Note note = ModalRoute.of(context).settings.arguments;
    _init(note);

    return Scaffold(
      appBar: AppBar(
                title: Text("Guardar"),
      ),
      body: Container(
        child: _buildForm(note, context),
      ),
    );
  }

  _init(Note note) {
    titleController.text = note.title;
    contentController.text = note.content;
    content1Controller.text = note.content1;
    habiController.text = note.habi;
    banosController.text = note.banos;
    direcController.text = note.direc;
    ciudadController.text = note.ciudad;
    postalController.text = note.postal;
    imagenController.text = note.imagen;
    extrasController.text = note.extras;
    mapsController.text = note.maps;
  }

  Widget _buildForm(Note note, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.name,
                controller: titleController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Título",        
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                controller: contentController,
                maxLines: 8,
                maxLength: 1000,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Contenido",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: content1Controller,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Tipo de Propiedad",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: habiController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "N° de habitaciones",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: banosController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "N° de Baños",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                controller: direcController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Direccion",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: ciudadController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Ciudad",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: postalController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Codigo Postal",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: imagenController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "imagen",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                controller: extrasController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Extras",
                    border:
                        OutlineInputBorder() //borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.url,
                controller: mapsController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Tiene que colocar data";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Maps",
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
                      note.title = titleController.text;
                      note.content = contentController.text;
                      note.content1 = content1Controller.text;
                      note.habi = habiController.text;
                      note.banos = banosController.text;
                      note.direc = direcController.text;
                      note.ciudad = ciudadController.text;
                      note.postal = postalController.text;
                      note.imagen = imagenController.text;
                      note.extras = extrasController.text;
                      note.maps = mapsController.text;

                      Operation.update(note);
                      Navigator.pop(
                          context, "Datos Actualizados Correctamente");
                    } else {
                      // insercion
                      Operation.insert(Note(
                          title: titleController.text,
                          content: contentController.text,
                          content1: content1Controller.text,
                          habi: habiController.text,
                          banos: banosController.text,
                          direc: direcController.text,
                          ciudad: ciudadController.text,
                          postal: postalController.text,
                          imagen: imagenController.text,
                          extras: extrasController.text,
                          maps: mapsController.text));
                      Navigator.pop(context, "Datos Almacenados Correctamente");
                    }
                  }
                  Navigator.pushNamed(context, Home.ROUTE,
                      arguments: Note.empty());
                }, //fin onpresed
              )
            ],
          ),
        ),
      ),
    );
  }

  guardar() {
    print("Informacion almacenada correctamente");
    _formKey.currentState.reset();
  }
}
