import 'package:flutter/material.dart';

class Topnavbar extends StatelessWidget{
  const Topnavbar({super.key,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        title: const Text(
          'Automobile App',
          style:  TextStyle(color: Color.fromARGB(201, 0, 0, 0)), 
        ),
    );
  }
}