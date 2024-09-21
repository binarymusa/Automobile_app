import 'package:flutter/material.dart';
// import 'package:test_app/widgets/bottomnavbar.dart';
// import 'package:test_app/widgets/topnavbar.dart';
import 'package:test_app/widgets/column.dart';
// import 'package:test_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onNavTapped;

  const HomePage({
    super.key, 
    required this.currentIndex,
    required this.onNavTapped,
  });

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ColumnItem(),
      backgroundColor:  Color.fromARGB(155, 48, 48, 48),
    );
  }
}