import 'package:flutter/material.dart';

class TaskListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tareas Pendientes Grupo 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialPage(title: 'Listado de Pendientes Grupo 5'),
      routes: {
        '/noticias': (context) => Placeholder(),
        '/cambio_monedas': (context) => Placeholder(),
        '/lista_tareas': (context) => TaskListApp(),
        '/podcast': (context) => Placeholder(),
      },
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú Principal'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Noticias'),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('Cambio de Monedas'),
              onTap: () {
                Navigator.pushNamed(context, '/cambio_monedas');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              onTap: () {
                Navigator.pushNamed(context, '/lista_tareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
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

void main() {
  runApp(TaskListApp());
}
