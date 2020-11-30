import 'package:flutter/material.dart';
import 'package:flutter_login_ui/widgets/CreateTodoButton.dart';
import 'package:flutter_login_ui/widgets/ReadTodoButton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooming OMALANIS'),
      ),
      body: Column(
        children: <Widget>[
          Center(child: CreateTodoButton()),
          Center(child: ReadTodoButton())
        ],
      ),
    );
  }
}
