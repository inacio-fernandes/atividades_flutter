import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Form Demo', home: FormDemo());
  }
}

class FormDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dobController = TextEditingController();

  void _showSnackBar(BuildContext context) {
    final name = _nameController.text;
    final phone = _phoneController.text;
    final dob = _dobController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Nome: $name\nTelefone: $phone\nNascimento: $dob')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Form Demo'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Nome'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
                Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Expanded(
                  child: TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(labelText: 'Telefone'),
                    keyboardType: TextInputType.number,
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10),
                Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 10),
                  Expanded(
                  child: TextFormField(
                    controller: _dobController,
                    decoration: InputDecoration(
                    labelText: 'Nascimento',
                    hintText: 'YYYY-MM-DD',
                    ),
                    readOnly: true,
                    onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                      _dobController.text =
                        pickedDate.toLocal().toString().split(' ')[0];
                      });
                    }
                    },
                  ),
                  ),
                ],
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _showSnackBar(context);
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
