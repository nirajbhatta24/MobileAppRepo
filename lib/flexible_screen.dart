import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({super.key});

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 400,
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              height: 200,
              color: const Color.fromARGB(255, 179, 167, 167),
            ),
          ),
        ],
      ),
    );
  }
}