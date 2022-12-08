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
              child: const Text("Container1"),
              color: Colors.red,
              

            )),
            Expanded(child: Container(
               height:100,
              child: const Text("Container2"),
              color: Colors.blue,
            )),
            Expanded(child: Container(
               height:100,
              child: const Text("Container3"),
              color: Colors.green,
            ))
          ],
        ),
        Expanded(child: Container(
          child: const Text("Container4"),
          color: Colors.yellow,
          width: double.infinity,
        )),
        Expanded(child: Container(
          child: const Text("Container5"),
          color: Colors.pink,
          width: double.infinity,
        )),
        Expanded(child: Container(
          child: const Text("Container6"),
          color: Colors.green,
          width: double.infinity,
        ))
        ],
      ),
    );
  }
}