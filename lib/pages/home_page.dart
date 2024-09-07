import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(16.0),
          child: Column(
            children: List.generate(3, (index) => buildColumns()),            
          ),
        ),
    );
    // backgroundColor: const Color.fromARGB(85, 75, 75, 75);
  }
}

Widget buildColumns() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
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
}