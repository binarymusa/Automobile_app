import 'package:flutter/material.dart';
// import 'package:test_app/widgets/bottomnavbar.dart';
// import 'package:test_app/widgets/topnavbar.dart';
// import 'package:test_app/widgets/drawer.dart';

class PurchasesPage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onNavTapped;

  const PurchasesPage({
    super.key,
    // Key? key,
    required this.currentIndex,
    required this.onNavTapped,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Purchases page', style: TextStyle(color: Color.fromARGB(185, 255, 255, 255),),),
      ),
      backgroundColor:  Color.fromARGB(155, 48, 48, 48),

    );
  }
}