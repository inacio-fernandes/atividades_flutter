import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'GridView Demo', home: const GridScreen());
  }
}

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  final List<Map<String, String>> items = const [
    {
      "title": "Che\nFlower Market",
      "image": "../image.png",
    },
    {
      "title": "Tanjore\nBronze Works",
      "image": "lib/image.png",
    },
    {
      "title": "Tanjore\nMarket",
      "image": "lib/image.png",
    },
    {
      "title": "Tanjore\nThanjavur Temple",
      "image": "lib/image.png",
    },
    {
      "title": "Tanjore\nThanjavur Temple",
      "image": "lib/image.png",
    },
    {
      "title": "Pondicherry\nSalt Farm",
      "image": "lib/image.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid de Lugares")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(item['image']!, fit: BoxFit.cover),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                      ),
                    ),
                    child: Text(
                      item['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        shadows: [Shadow(blurRadius: 2)],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
