import 'package:flutter/material.dart';


class Bottomnavbars extends StatelessWidget {
  final int currentIndex; // Add currentIndex parameter
  final Function(int) onTap; // Function to handle tap

  const Bottomnavbars({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_convenience_store_rounded),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify),
            label: 'Purchases',
          ),
        ],

        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(201, 0, 0, 0),
        selectedFontSize: 15,        
        selectedIconTheme: const IconThemeData(
          size: 30.0,
        ),
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        onTap: onTap,
        // onTap: (index) {
        //   switch(index) {
        //     case 0:
        //     Navigator.pushNamed(context, '/');
        //     break;

        //     case 1:
        //     Navigator.pushNamed(context, '/Cart');
        //     break;

        //     case 2:
        //     Navigator.pushNamed(context, '/Purchases');
        //   }
        // },
    );
  }
}
