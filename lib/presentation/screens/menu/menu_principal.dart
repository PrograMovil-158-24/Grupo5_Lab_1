import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/noticias': (context) => NoticiasScreen(),
        '/cambio-monedas': (context) => CambioMonedasScreen(),
        '/lista-tareas': (context) => ListaTareasScreen(),
        '/podcast': (context) => PodcastScreen(),
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
        child: Text('Bienvenidos al Menú Principal'),
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
              leading: Icon(Icons.article),
              title: Text('Noticias'),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Cambio de Monedas'),
              onTap: () {
                Navigator.pushNamed(context, '/cambio-monedas');
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lista de tareas'),
              onTap: () {
                Navigator.pushNamed(context, '/lista-tareas');
              },
            ),
            ListTile(
              leading: Icon(Icons.mic),
              title: Text('Podcast'),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NoticiasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: Center(
        child: Text('Pantalla de Noticias'),
      ),
    );
  }
}

class CambioMonedasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
      ),
      body: Center(
        child: Text('Pantalla de Cambio de Monedas'),
      ),
    );
  }
}

class ListaTareasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: Center(
        child: Text('Pantalla de Lista de Tareas'),
      ),
    );
  }
}

class PodcastScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Center(
        child: Text('Pantalla de Podcast'),
      ),
    );
  }
}
