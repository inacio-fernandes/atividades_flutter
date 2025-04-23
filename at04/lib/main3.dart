import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Notas de Tarefas',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage(),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _tasks = [];
  bool _showCompleted = false;

  void _addTask() {
    setState(() {
      _tasks.add({
        "id": DateTime.now().toString(),
        "title": "Tarefa ${_tasks.length + 1}",
        "isDone": false,
      });
    });
  }

  void _toggleTask(String id) {
    setState(() {
      final task = _tasks.firstWhere((t) => t['id'] == id);
      task['isDone'] = !task['isDone'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayTasks = _tasks.where((t) => t['isDone'] == _showCompleted).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notas de Tarefas'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => setState(() => _showCompleted = !_showCompleted),
              child: Text(_showCompleted ? 'Ver Pendentes' : 'Ver Concluídas'),
            ),
            const SizedBox(height: 20),
            Text('Total: ${displayTasks.length}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: displayTasks.length,
                itemBuilder: (_, i) {
                  final task = displayTasks[i];
                  return Card(
                    color: _showCompleted ? Colors.greenAccent : Colors.amberAccent,
                    child: ListTile(
                      title: Text(task['title']),
                      trailing: Checkbox(
                        value: task['isDone'],
                        onChanged: (_) => _toggleTask(task['id']),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
