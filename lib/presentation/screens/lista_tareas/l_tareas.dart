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

class Actividad {
  final String nombre;
  final String tipo;

  Actividad({required this.nombre, required this.tipo});
}

class InitialPage extends StatefulWidget {
  final String title;

  InitialPage({Key? key, required this.title}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<Actividad> tasks = [
    Actividad(nombre: 'Tarea de Edgar Marin', tipo: 'Tarea'),
    Actividad(nombre: 'Tarea de Alejandro', tipo: 'Tarea'),
    Actividad(nombre: 'Tarea de Richard', tipo: 'Tarea'),
  ];

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
            title: Text(tasks[index].nombre),
            subtitle: Text(tasks[index].tipo),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addTask('Nueva tarea de grupo 5', 'Tarea');
        },
        tooltip: 'Agregar Tarea Nueva',
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(String taskName, String taskType) {
    setState(() {
      tasks.add(Actividad(nombre: taskName, tipo: taskType));
    });
  }
}
