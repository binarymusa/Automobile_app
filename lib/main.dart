import 'package:flutter/material.dart';
// import "package:test_app/routes.dart";
import 'package:test_app/widgets/drawer.dart';
import 'package:test_app/views/home_page.dart';
import 'package:test_app/views/cart_page.dart';
import 'package:test_app/views/purchases_page.dart';
import 'package:test_app/widgets/bottomnavbar.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/navigation_provider.dart';

void main() =>  runApp(
  ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: const MainApp()
  ),
);

/* class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
} */

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  /* int _currentIndex = 0; // Track the current index
  final PageController _pageController = PageController();

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  } */

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    final List<String> titles = ['Automobile', 'Cart', 'Purchases'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(185, 255, 255, 255),
          title: Text(
            titles[Provider.of<NavigationProvider>(context).currentIndex],
            style: const TextStyle(color: Color.fromARGB(201, 0, 0, 0)),
          ),
        ),
        endDrawer:const  EndDrawer(),

        body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              Provider.of<NavigationProvider>(context, listen: false).setCurrentIndex(index);
          },
          children: [
            HomePage(
              currentIndex: Provider.of<NavigationProvider>(context).currentIndex,
              onNavTapped: (index) {}
            ),
            CartPage(
              currentIndex: Provider.of<NavigationProvider>(context).currentIndex,
              onNavTapped: (index) {}
            ),
            PurchasesPage(
              currentIndex: Provider.of<NavigationProvider>(context).currentIndex,
              onNavTapped: (index) {}
            ),
          ],
        ),

        bottomNavigationBar: Bottomnavbars(
          currentIndex: Provider.of<NavigationProvider>(context).currentIndex,
          onTap: (index) {
            Provider.of<NavigationProvider>(context, listen: false).setCurrentIndex(index);
            _pageController.jumpToPage(index);
          }
        ),
      ),
    );

  }
}

