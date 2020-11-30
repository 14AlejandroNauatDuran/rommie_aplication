import 'package:flutter/material.dart';
import 'package:flutter_login_ui/model/Todo.dart';
import '../helper/DatabaseHelper.dart';

class DetailTodoScreen extends StatefulWidget {
  static const routeName = '/detailTodoScreen';
  final Todo todo;

  const DetailTodoScreen({Key key, this.todo}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateTodoState(todo);
}

class _CreateTodoState extends State<DetailTodoScreen> {
  Todo todo;
  final descriptionTextController = TextEditingController();
  final titleTextController = TextEditingController();
  final cantidadTextController = TextEditingController();
  _CreateTodoState(this.todo);

  @override
  void initState() {
    super.initState();
    if (todo != null) {
      descriptionTextController.text = todo.content;
      titleTextController.text = todo.title;
      cantidadTextController.text = todo.cont1;
    }
  }

  @override
  void dispose() {
    super.dispose();
    descriptionTextController.dispose();
    titleTextController.dispose();
    cantidadTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion de habitacion'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Direccion"),
                maxLines: 1,
                controller: titleTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Caracteristicas de la habitacion"),
                maxLines: 5,
                controller: descriptionTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "cantidad de huspedes"),
                maxLines: 1,
                controller: cantidadTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Normas de la casa "),
                maxLines: 5,
                controller: descriptionTextController,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () async {
            _saveTodo(titleTextController.text, descriptionTextController.text,
                cantidadTextController.text);
            setState(() {});
          }),
    );
  }

  _saveTodo(String title, String content, String cont1) async {
    if (todo == null) {
      DatabaseHelper.instance.insertTodo(Todo(
          title: titleTextController.text,
          content: descriptionTextController.text,
          cont1: cantidadTextController.text));
      Navigator.pop(context, "Your todo has been saved.");
    } else {
      await DatabaseHelper.instance.updateTodo(
          Todo(id: todo.id, title: title, content: content, cont1: cont1));
      Navigator.pop(context);
    }
  }
}
