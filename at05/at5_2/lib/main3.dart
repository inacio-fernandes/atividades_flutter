import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sobrescrevendo ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // TEMA DO OUTRO
      ),
      home: Scaffold(
        body: Theme(
          data: ThemeData(
            scaffoldBackgroundColor: Colors.yellow, // O QUE FOI SOBRESCRITO
          ),
          child: Builder(
            builder:
                (context) => Scaffold(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  body: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.amberAccent,
                      alignment: Alignment.center,
                      child: const Text(
                        'Widget',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
