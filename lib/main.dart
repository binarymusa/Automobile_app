import 'package:flutter/material.dart';
// import "package:test_app/routes.dart";
import 'package:test_app/widgets/drawer.dart';
import 'package:test_app/views/home_page.dart';
import 'package:test_app/views/cart_page.dart';
import 'package:test_app/views/purchases_page.dart';
import 'package:test_app/widgets/bottomnavbar.dart';

void main() =>  runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int _currentIndex = 0; // Track the current index
  final PageController _pageController = PageController();

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(185, 255, 255, 255),
          title: const Text(
            'Automobile',
            style:  TextStyle(color: Color.fromARGB(201, 0, 0, 0)),
          ),
        ),
        endDrawer:const  EndDrawer(),

        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            HomePage(
              currentIndex: _currentIndex,
              onNavTapped: _onNavTapped,
            ),
            CartPage(
              currentIndex: _currentIndex,
              onNavTapped: _onNavTapped,
            ),
            PurchasesPage(
              currentIndex: _currentIndex,
              onNavTapped: _onNavTapped,
            ),
          ],
        ),

        bottomNavigationBar: Bottomnavbars(
          currentIndex: _currentIndex,
          onTap: _onNavTapped,
        ),
      ),
    );

    /* Widget currentPage;

    switch (_currentIndex) {
      case 0:
        currentPage = HomePage(
          currentIndex: _currentIndex,
          onNavTapped: _onNavTapped,
        );
        break;
      case 1:
        currentPage = CartPage(
          currentIndex: _currentIndex,
          onNavTapped: _onNavTapped,
        );
        break;
      case 2:
        currentPage = PurchasesPage(
          currentIndex: _currentIndex,
          onNavTapped: _onNavTapped,
        );
        break;
      default:
        currentPage = HomePage(
          currentIndex: _currentIndex,
          onNavTapped: _onNavTapped,
        );
    }

    return MaterialApp(
      home: Scaffold(
        body: currentPage,
      ),
    ); */
  }
}

