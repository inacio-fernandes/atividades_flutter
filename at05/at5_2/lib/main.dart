import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.blue, // Aplica o fundo azul corretamente
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: const Text(
              'Widget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
