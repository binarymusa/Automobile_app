import 'package:flutter/material.dart';
import 'package:test_app/views/cart_page.dart';
import 'package:test_app/views/home_page.dart';
import 'package:test_app/views/purchases_page.dart';


class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':    
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case '/Cart':    
        return MaterialPageRoute(
          builder: (_) => const CartPage(),
        );

      case '/Purchases':
        return MaterialPageRoute(
        builder: (_) => const PurchasesPage(),
        );

      default:      
      // ('Route not found: ${settings.name}');
      throw const FormatException("Route not found");
    }
  }
}
