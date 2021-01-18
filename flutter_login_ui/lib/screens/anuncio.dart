import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/utilities/constants.dart';

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
  String namePropity,
      typePropity,
      numPeople,
      numHabitacion,
      numBano,
      direccion,
      localidad,
      cp,
      imagen,
      extra,
      googlemaps;

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
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Propiedad",
                    hintText: 'Nombre de la propiedad',
                    hintStyle: kHintTextStyle,
                  ),
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
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Tipo de Propiedad",
                    hintText: 'Casa, Departamento, Habitación...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    typePropity = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Capacidad de personas",
                    hintText: 'Cuantas personas',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    numPeople = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "N° de habitaciones",
                    hintText: 'Casa, Departamento, Habitación...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    numHabitacion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "N° de Baños",
                    hintText: 'Cantidad de baños...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    numBano = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Dirección",
                    hintText: 'Escriba su dirección...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    direccion = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Ciudad",
                    hintText: 'Localidad, Ciudad, Estado...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    localidad = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Código Postal",
                    hintText: 'Codigo Postal...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    cp = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Captura imágenes del lugar",
                    hintText: 'Imagenes...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    imagen = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "Extras",
                    hintText: 'Describe partes adicionales...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    extra = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Llene este campo";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.url,
                  style: TextStyle(
                      color: Colors.blueAccent, fontFamily: 'OpenSans'),
                  decoration: InputDecoration(
                    labelText: "IdGoogleMaps",
                    hintText: 'Codigo Postal...',
                    hintStyle: kHintTextStyle,
                  ),
                  onSaved: (value) {
                    googlemaps = value;
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
