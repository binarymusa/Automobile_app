import 'package:flutter/material.dart';
import 'package:test_app/views/cart_page.dart';
import 'package:test_app/views/home_page.dart';
import 'package:test_app/views/purchases_page.dart';


class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':    
        return MaterialPageRoute(
          builder: (_) =>  HomePage(
            currentIndex: 0,
            onNavTapped: (index) {
              Navigator.of(_).pushReplacementNamed(
                index == 0 ? '/' : (index == 1 ? '/Cart' : '/Purchases'));}
          ),
        );

      case '/Cart':    
        return MaterialPageRoute(
          builder: (_) => CartPage(
            currentIndex: 1,
            onNavTapped: (index) {
              Navigator.of(_).pushReplacementNamed(
                index == 1 ? '/' : (index == 1 ? '/Cart' : '/Purchases'));}
          ),
        );

      case '/Purchases':
        return MaterialPageRoute(
        builder: (_) => PurchasesPage(
          currentIndex: 2,
          onNavTapped: (index) {
            Navigator.of(_).pushReplacementNamed(
              index == 2 ? '/' : (index == 2 ? '/Cart' : '/Purchases'));}
        ),
        );

      default:      
      // ('Route not found: ${settings.name}');
      throw const FormatException("Route not found");
    }
  }
}
