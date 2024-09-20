import 'package:flutter/material.dart';


class Bottomnavbars extends StatelessWidget {
  const Bottomnavbars({super.key,});

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
       
        selectedItemColor: const Color.fromARGB(201, 0, 0, 0),
        selectedFontSize: 15,        
        selectedIconTheme: const IconThemeData(
          size: 30.0,
        ),
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        onTap: (index) {
          switch(index) {
            case 0:
            Navigator.pushNamed(context, '/');
            break;

            case 1:
            Navigator.pushNamed(context, '/Cart');
            break;

            case 2:
            Navigator.pushNamed(context, '/Purchases');
          }
        },
    );
  }
}
