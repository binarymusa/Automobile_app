import 'package:flutter/material.dart';
import 'package:test_app/widgets/bottomnavbar.dart';
// import 'package:test_app/widgets/topnavbar.dart';
import 'package:test_app/widgets/column.dart';
import 'package:test_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: Topnavbar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        title: const Text(
          'Automobile',
          style:  TextStyle(color: Color.fromARGB(201, 0, 0, 0)),
        ),
      ),
      endDrawer: const EndDrawer(),
      body: const ColumnItem(),
      backgroundColor: const Color.fromARGB(155, 48, 48, 48),
      bottomNavigationBar: const Bottomnavbars(),
    );
  }
}


/* Widget buildColumns() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    // height: 20.0,
    // color: Colors.cyan,
    decoration: BoxDecoration(
      color: const Color.fromARGB(158, 65, 64, 64),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(3, (index) => buildItem(index)),
    ),
  );
}

Widget buildItem(int index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        const Icon(Icons.star, color: Colors.white),
        Text(
          'Item $index',
          style: const TextStyle(color: Color(0xFFFFFFFF)),
        ),
      ],
    ),
  );
} */