import 'package:flutter/material.dart';

class Anuncio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil_usuario',
      home: FormularioPerfil(),
    );
  }
}

// ignore: must_be_immutable
class FormularioPerfil extends StatelessWidget {
  @override
  FormularioPerfil();

  final GlobalKey formKey =
      GlobalKey<FormState>(); //acceso a un elemento del widge de manera global
  String namePropity;
  String apellidoPaterno, apellidoMaterno, genero, ocupacion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis anuncios"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Nombre de la propiedad:"),
                  onSaved: (value) {
                    namePropity = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Tipo de propiedad"),
                  onSaved: (value) {
                    apellidoPaterno = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Casa, Departamento...";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Capacidad de Personas"),
                  onSaved: (value) {
                    apellidoMaterno = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "N° de habitaciones"),
                  onSaved: (value) {
                    genero = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "N° de Baños"),
                  onSaved: (value) {
                    genero = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Dirección"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Localidad"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Codigo Postal"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Captura imagenes" + '\n' + " del lugar"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Extras"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: "Localización en GoogleMaps"),
                  onSaved: (value) {
                    ocupacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Text("Guardar Información"),
                  color: Colors.blueAccent,
                  onPressed: () {
                    print("Informacion almacenada correctamente");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
