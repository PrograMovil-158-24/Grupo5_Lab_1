import 'package:flutter/material.dart';
import 'package:laboratorio1/presentation/screens/lista_tareas/l_tareas.dart';
import 'package:laboratorio1/presentation/screens/menu/menu_principal.dart';
import 'package:laboratorio1/presentation/screens/noticias/noticias.dart';
import 'package:laboratorio1/presentation/screens/podcast/podcast.dart';


class ScreenForPodcast extends StatelessWidget {
  const ScreenForPodcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/linkin_park_album.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Album Minutes To Midnight',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Linkin Park Minutes To Midnight'),
            ),

            const LinearProgressIndicator(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shuffle),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_next),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('1:54 / 3:00'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Descripción del Album'),
            ),
          ],
        ),
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
                Navigator.popAndPushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('Cambio de Monedas'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/cambio_monedas');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/lista_tareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScreenForPodcast(),
    routes: {
       '/': (context) => MainMenu(),
        '/noticias': (context) => noticias(),
        '/lista_tareas': (context) => TaskListApp(),
        '/podcast': (context) => ScreenForPodcast(),
    },
  ));
}
