import 'package:flutter/material.dart';

class ScreenForPodcast extends StatelessWidget {
  const ScreenForPodcast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: NetworkImage(
                    'https://c4.wallpaperflare.com/wallpaper/193/316/956/linkin-park-wallpaper-preview.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Título del podcast
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Album Minutes To Midnight',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            // Nombre del almbum a reproducir
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Linking Park Minutes To Midnight'),
            ),

            LinearProgressIndicator(
              value: 0.6, // Example value, should represent actual progress
            ),

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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('1:54 / 3:00'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Descripción del Album'),
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
  ));
}
