import 'package:flutter/material.dart';
import 'package:test_app/widgets/bottomnavbar.dart';
// import 'package:test_app/widgets/topnavbar.dart';
import 'package:test_app/widgets/drawer.dart';

class PurchasesPage extends StatelessWidget {
  const PurchasesPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Topnavbar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        title: const Text(
          'Automobile',
          style:  TextStyle(color: Color.fromARGB(201, 0, 0, 0)),
        ),
      ),
      endDrawer: const EndDrawer(),
      body: const Center(
        child: Text('Purchases page', style: TextStyle(color: Color.fromARGB(185, 255, 255, 255),),),
      ),
      backgroundColor: const Color.fromARGB(155, 48, 48, 48),
      bottomNavigationBar: const Bottomnavbars(),
    );
  }
}