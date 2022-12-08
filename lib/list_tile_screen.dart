import 'package:flutter/material.dart';


class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body:const ListTile(
        leading : Icon(Icons.accessible_forward),
        title: Text('Kaushal Khanal'),
        subtitle:  Text('Kathmandu,Nepal'),
        
      ),
    );
  }
}