import 'package:flutter/material.dart';

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
    );
  }
}
