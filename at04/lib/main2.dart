import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomAppBar with FAB',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _showFabOptions = false;

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
      _showFabOptions = false;
    });
  }

  void _toggleFabOptions() {
    setState(() {
      _showFabOptions = !_showFabOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomAppBar with FAB")),
      body: Center(
        child: Text("TAB: $_selectedIndex", style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_showFabOptions) ...[
            FloatingActionButton(
              heroTag: 'option1',
              mini: true,
              child: Icon(Icons.insert_drive_file),
              onPressed: () => print("Arquivo"),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              heroTag: 'option2',
              mini: true,
              child: Icon(Icons.email),
              onPressed: () => print("Email"),
            ),
            SizedBox(height: 8),
            FloatingActionButton(
              heroTag: 'option3',
              mini: true,
              child: Icon(Icons.phone),
              onPressed: () => print("Telefone"),
            ),
            SizedBox(height: 8),
          ],
          FloatingActionButton(
            heroTag: 'main',
            child: Icon(Icons.add),
            onPressed: _toggleFabOptions,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => _selectTab(0),
              color: _selectedIndex == 0 ? Colors.red : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => _selectTab(1),
              color: _selectedIndex == 1 ? Colors.red : Colors.grey,
            ),
            SizedBox(width: 48), // espaço para o FAB central
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () => _selectTab(2),
              color: _selectedIndex == 2 ? Colors.red : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.warning),
              onPressed: () => _selectTab(3),
              color: _selectedIndex == 3 ? Colors.red : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
