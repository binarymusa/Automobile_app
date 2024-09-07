import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/cart_page.dart';
import 'pages/purchases_page.dart';

void main() =>  runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:  MyHomePage(
        title: '',
      ),
     
    );
  }
}


class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
  // State<MyHomePage> createState() => MyHomePageState(); 
}


class MyHomePageState extends State<MyHomePage>{
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    CartPage(),
    PurchasesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        title: const Text(
          'Automobile App',
          style:  TextStyle(color: Color.fromARGB(244, 255, 255, 255)), 
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:const  <Widget>[
            DrawerHeader(              
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title:  Text('Item 1'),
              // onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              // onTap: () {},
            ),
          ],
        ),
      ),
      
      body: _pages[_selectedIndex],      
      backgroundColor: const Color.fromARGB(155, 48, 48, 48),

      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(201, 0, 0, 0),
        selectedFontSize: 15,        
        selectedIconTheme: const IconThemeData(
          size: 30.0,
        ),
        backgroundColor: const Color.fromARGB(185, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
