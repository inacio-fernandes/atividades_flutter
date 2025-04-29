import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData.dark(), 
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  final List<String> languages = ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Layouts')),
      body: isPortrait ? _buildPortraitLayout() : _buildLandscapeLayout(),
    );
  }

  Widget _buildPortraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
          ],
        ),
        const SizedBox(height: 20),
        ...languages
            .map((lang) => ListTile(title: Center(child: Text(lang))))
            .toList(),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Cheetah Coding', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
            ],
          ),
        ),
        const VerticalDivider(width: 1, thickness: 1),
        Expanded(
          flex: 1,
          child: ListView(
            children:
                languages
                    .map((lang) => ListTile(title: Center(child: Text(lang))))
                    .toList(),
          ),
        ),
      ],
    );
  }
}
