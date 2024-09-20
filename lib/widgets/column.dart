import 'package:flutter/material.dart';

class ColumnItem extends StatelessWidget{
  const ColumnItem({super.key,});

  @override
  Widget build(BuildContext context) {
     return  SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 9.0),
      child: Column(
        children: List.generate(5, (index) => buildColumns(index)),
      ),
     );
  }
 
}

Widget buildColumns(index){
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
}


  