import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil_usuario',
      home: FormularioPerfil(),
    );
  }
}

class FormularioPerfil extends StatelessWidget {
  @override
  FormularioPerfil();

  final GlobalKey formKey =
      GlobalKey<FormState>(); //acceso a un elemento del widge de manera global
  String nameValue;
  String apellidoPaterno, apellidoMaterno, genero, ocupacion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario del perfil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/logos/usuario.png",
                height: 200,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Nombre:"),
                onSaved: (value) {
                  nameValue = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido Paterno"),
                onSaved: (value) {
                  apellidoPaterno = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido Materno"),
                onSaved: (value) {
                  apellidoMaterno = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Genero"),
                onSaved: (value) {
                  genero = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Ocupacion"),
                onSaved: (value) {
                  ocupacion = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              RaisedButton(
                child: Text("Guardar Informacion"),
                color: Colors.blueAccent,
                onPressed: () {
                  print("Informacion almacenada correctamente");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
