import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter By Example'),
      backgroundColor: Colors.blue,),
      
      body: Center(
      child: FlutterLogo(
        size: 250,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.blue,
      ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.star),
      backgroundColor: Colors.blue,
      ),
    );
  }
}
