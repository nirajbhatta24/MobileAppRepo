import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  void _add() {
    setState(() {
      result =
          int.parse(_firstController.text) + int.parse(_secondController.text);
    });
    Navigator.pushNamed(context, '/arithmeticOutput',
    arguments: result);
  }

  final _firstController = TextEditingController(text: '1');
  final _secondController = TextEditingController();

  int result = 0;

  final _globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ADD two numbers',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 250, 225, 254)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 168, 52, 189),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _globalkey,
          child: Column(
            children: [
              TextFormField(
                  controller: _firstController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter first no',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first number';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                  controller: _secondController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter second no'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter second  number';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
                
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 190, 86, 209)), // background
                  onPressed: () {
                    if (_globalkey.currentState!.validate()) {
                      _add();
                    }
                    
                  },
                  child: const Text(
                    'ADD',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text('The sum is : $result',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
