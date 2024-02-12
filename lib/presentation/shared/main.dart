import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/noticias': (context) => NewsSpace(),
        '/tareas': (context) => TaskList(),
        '/monedas': (context) => CurrencyConverter(),
        '/podcasts': (context) => Podcasts(),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Center(
        child: Text('Bienvenidos al menu principal de la aplicaicion para CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu de Opciones'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Espacio para Noticias'),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text('Lista de Tareas'),
              onTap: () {
                Navigator.pushNamed(context, '/tareas');
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Cambio de Monedas'),
              onTap: () {
                Navigator.pushNamed(context, '/monedas');
              },
            ),
            ListTile(
              leading: Icon(Icons.headset),
              title: Text('Podcasts'),
              onTap: () {
                Navigator.pushNamed(context, '/podcasts');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewsSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: Center(
        child: Text('Este es el espacio para las noticias'),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: Center(
        child: Text('Este es el espacio para la lista de tareas'),
      ),
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convertidor de monedas'),
      ),
      body: Center(
        child: Text('Este es el espacio para el convertidor de moendas'),
      ),
    );
  }
}

class Podcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcasts'),
      ),
      body: Center(
        child: Text('Esta es la seccion para el podscats'),
      ),
    );
  }
}
