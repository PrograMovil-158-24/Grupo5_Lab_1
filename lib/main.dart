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