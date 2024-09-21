import 'package:flutter/material.dart';
// import "package:test_app/routes.dart";
import 'package:test_app/views/home_page.dart';
import 'package:test_app/views/cart_page.dart';
import 'package:test_app/views/purchases_page.dart';
// import 'package:test_app/widgets/bottomnavbar.dart';

void main() =>  runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int _currentIndex = 0; // Track the current index

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage;

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
    );
  }
}


/* class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
} */

