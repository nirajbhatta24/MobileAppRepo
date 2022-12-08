// import 'package:first_project/arithmetic_output_screen.dart';
// import 'package:first_project/arithmetic_screen.dart';
// import 'package:first_project/column_screen.dart';
//import 'package:first_project/list_tile_screen.dart';
import 'package:first_project/container.dart';
import 'package:first_project/image_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter for class',
      routes: {
        //'/': (context) => const SimpleInterestScreen(),
        // '/': (context) => const ArithmeticScreen(),
        // '/': (context) => const ComulnScreen(),
        // '/arithmeticOutput ':(context)=>const ArithmeticOutput(),
        //'/': (context) => const ListTileScreen(),
        // '/': (context) => const Screen_container(),
        '/': (context) => const ImageScreen(),
      },
    ),
  );
}