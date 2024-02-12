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

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Album Minutes To Midnight',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Linking Park Minutes To Midnight'),
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
