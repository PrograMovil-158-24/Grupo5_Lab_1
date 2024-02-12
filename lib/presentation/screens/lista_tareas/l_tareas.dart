import 'package:flutter/material.dart';

void main() {
  runApp(TaskListApp());
}

class TaskListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tareas Pendientes Grupo 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialPage(title: 'Listado de Pendientes Grupo 5'),
    );
  }
}

class InitialPage extends StatefulWidget {
  final String title;

  InitialPage({Key key, this.title}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<String> tasks = ['Tarea de Edgar Marin', 'Tarea de Alejandro', 'Tarea de Richard'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addTask('Nueva tarea de grupo 5');
        },
        tooltip: 'Agregar Tarea Nueva',
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }
}
