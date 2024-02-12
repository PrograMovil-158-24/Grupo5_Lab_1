import 'package:flutter/material.dart';

void main() {
  runApp(tasklistem());
}

class tasklistem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tareas Pendientes Grupo 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: intialpage(title: 'Listado de Pendientes Grupo 5'),
    );
  }
}

class intialpage extends StatefulWidget {
  intialpage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  homepagestate createState() => homepagestate();
}

class homepagestate extends State<intialpage> {
  List<String> tareas = ['Tarea de Edgar Marin', 'Tarea de Alejandro', 'Tarea de Richard'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agregar una nueva tarea
          setState(() {
            tareas.add('Nueva tarea de grupo 5');
          });
        },
        tooltip: 'Agregar Tarea Nueva',
        child: Icon(Icons.add),
      ),
    );
  }
}
