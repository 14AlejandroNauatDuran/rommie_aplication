import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Pagina2Arguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion "),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(arguments.name),
              Text(arguments.lastName),
              Text(arguments.foto),
              Text(arguments.idioma),
              Text(arguments.fecha),
              Text(arguments.sexo),
              Text(arguments.ocupacion),
              RaisedButton(
                child: Text("publicar Habitacion"),
                onPressed: () {
                  _showPagina2(context);
                },
              ),
            ]),
      ),
    );
  }
}

void _showPagina2(BuildContext context) {
  Navigator.of(context).pushNamed("/second", arguments: Pagina2Arguments());
}

class Pagina2Arguments {
  String name;
  String lastName;
  String foto;
  String fecha;
  String ocupacion;
  String sexo;
  String idioma;
  Pagina2Arguments(
      {this.foto,
      this.name,
      this.lastName,
      this.fecha,
      this.sexo,
      this.idioma,
      this.ocupacion});
}
