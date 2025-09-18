import 'package:flutter/material.dart';
import 'services/order_manager.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = OrderManager();
    manager.addOrder("Ali", "Shai", "extra sugar");
    manager.addOrder("Omar", "Coffee", "no sugar");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(manager: manager),
    );
  }
}
