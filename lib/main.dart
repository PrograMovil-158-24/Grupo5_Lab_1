import 'package:flutter/material.dart';
import 'package:laboratorio1/presentation/screens/menu/menu_principal.dart';
import 'package:laboratorio1/presentation/screens/noticias/noticias.dart';
import 'package:laboratorio1/presentation/screens/podcast/podcast.dart';

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
        '/noticias': (context) => noticias(),
        '/cambio-monedas': (context) => CambioMonedasScreen(),
        '/lista-tareas': (context) => ListaTareasScreen(),
        '/podcast': (context) => ScreenForPodcast(),
      },
    );
  }
}
