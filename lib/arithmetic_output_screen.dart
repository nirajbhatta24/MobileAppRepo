import 'package:flutter/material.dart';

class ArithmeticOutput extends StatefulWidget {
  const ArithmeticOutput({super.key});

  @override
  State<ArithmeticOutput> createState() => _ArithmeticOutputState();
}

class _ArithmeticOutputState extends State<ArithmeticOutput> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int?;

    return Scaffold(
        appBar: AppBar(
          title: const Text('output'),
        ),
        body: Center(
            child: Text('the result is : $value',
                style: const TextStyle(fontSize: 35))));
  }
} 
