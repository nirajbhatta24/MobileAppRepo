import 'package:flutter/material.dart';



class ComulnScreen extends StatefulWidget {
  const ComulnScreen({super.key});

  @override
  State<ComulnScreen> createState() => _ComulnScreenState();
}

class _ComulnScreenState extends State<ComulnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body:Container(
        color:Colors.yellow,
        width:double.infinity,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            ElevatedButton(onPressed: (){}, 
            child: const Text("Button1")),
            ElevatedButton(onPressed: (){}, 
            child: const Text("Button2")),
            ElevatedButton(onPressed: (){}, 
            child: const Text("Button3")),
          ],
          )
      )
    );
  }
}