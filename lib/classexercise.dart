import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RowsColumnScreen extends StatefulWidget {
  const RowsColumnScreen({super.key});

  @override
  State<RowsColumnScreen> createState() => _RowsColumnScreenState();
}

class _RowsColumnScreenState extends State<RowsColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Colums"),
      ),
      body: Column(
        children: [Row(
          children: [
            Expanded(child: Container(
              height:100,
              color: const Color.fromARGB(255, 54, 216, 244),
              child: const Text("Container1"),
              

            )),
            Expanded(child: Container(
               height:100,
              color: const Color.fromARGB(255, 103, 243, 33),
              child: const Text("Container2"),
            )),
            Expanded(child: Container(
               height:100,
              color: const Color.fromARGB(255, 163, 166, 163),
              child: const Text("Container3"),
            ))
          ],
        ),
        Expanded(child: Container(
          color: const Color.fromARGB(255, 255, 160, 59),
          width: double.infinity,
          child: const Text("Container4"),
        )),
        Expanded(child: Container(
          color: const Color.fromARGB(255, 231, 62, 116),
          width: double.infinity,
          child: const Text("Container5"),
        )),
        Expanded(child: Container(
          color: const Color.fromARGB(255, 11, 81, 14),
          width: double.infinity,
          child: const Text("Container6"),
        ))
        ],
      ),
    );
  }
}