import '../models/order.dart';


class OrderManager {
  final List<Order> _orders = [];

  void addOrder(String customerName, String drinkType, String instructions) {
    _orders.add(Order(
      customerName: customerName,
      drinkType: drinkType,
      instructions: instructions,
    ));
  }

  List<Order> get pendingOrders =>
      _orders.where((order) => !order.isCompleted).toList();

  void completeOrder(int index) {
    if (index >= 0 && index < _orders.length) {
      _orders[index].markCompleted();
    }
  }

  List<Order> get orders => _orders;
}
