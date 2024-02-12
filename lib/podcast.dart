import 'package:flutter/material.dart';

class screenforpodcast extends StatelessWidget {
  const screenforpodcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            // Imagen del podcast
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    'https://c4.wallpaperflare.com/wallpaper/193/316/956/linkin-park-wallpaper-preview.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Título del podcast
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Album Minutes To Midnight',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            // Nombre del almbum a reproducir
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Linking Park Minutes To Midnight'),
            ),

            // Barra de reproductor
            const LinearProgressIndicator(),

            // Comandos de reproduccion: play, pause y stop
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botón de reproducción aleatoria
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shuffle),
                ),

                // button play for music
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                ),

                // siguiente cancion a reproducir
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_next),
                ),

                // button for repeating the audio
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat),
                ),
              ],
            ),

            // time  of the song playing
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('1:54 / 3:00'),
            ),

            // Descripción del Album reproducido
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Descripción del Album'),
            ),
          ],
        ),
      ),
    );
  }
}
