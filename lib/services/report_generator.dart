import '../models/order.dart';

class ReportGenerator {
  void generateReport(List<Order> orders) {
    print(" Sales Report:");
    final drinkCount = <String, int>{};

    for (var order in orders) {
      drinkCount[order.drinkType] = (drinkCount[order.drinkType] ?? 0) + 1;
    }

    drinkCount.forEach((drink, count) {
      print("$drink: $count");
    });

    print("Total orders: ${orders.length}");
  }
}
