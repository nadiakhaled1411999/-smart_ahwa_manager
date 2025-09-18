import 'package:flutter/material.dart';
import '../services/order_manager.dart';


class HomeScreen extends StatelessWidget {
  final OrderManager manager;

  const HomeScreen({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    final orders = manager.pendingOrders;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Ahwa Manager"),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text("${order.customerName} - ${order.drinkType}"),
            subtitle: Text(order.instructions),
            trailing: IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                manager.completeOrder(index);
                (context as Element).markNeedsBuild();
              },
            ),
          );
        },
      ),
    );
  }
}
