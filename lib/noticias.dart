import 'package:flutter/material.dart';

class noticias extends StatelessWidget {
  final List<Map<String, String>> newsList = [
    {
      'title': 'Nuevo curso de programación en CEUTEC',
      'image': 'not.jpg',
      'description': 'Se anuncia un nuevo curso de programación en CEUTEC.'
    },
    {
      'title': 'Inauguración de laboratorio de ciencias',
      'image': 'not.jpg',
      'description': 'Se inaugura un nuevo laboratorio de ciencias en la universidad.'
    },
    {
      'title': 'Charla sobre inteligencia artificial',
      'image': 'not.jpg',
      'description': 'Se realizará una charla sobre inteligencia artificial en el auditorio.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(
            title: newsList[index]['title']!,
            image: newsList[index]['image']!,
            description: newsList[index]['description']!,
          );
        },
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const NewsCard({
    required this.title,
    required this.image,
    required this.description,
  });
