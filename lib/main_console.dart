import 'services/order_manager.dart';
import 'services/report_generator.dart';

void main() {
  var manager = OrderManager();

  manager.addOrder("Ali", "Shai", "extra sugar");
  manager.addOrder("Omar", "Coffee", "no sugar");
  manager.addOrder("Mona", "Hibiscus", "extra mint");

  var report = ReportGenerator();
  report.generateReport(manager.orders);

  print("Pending Orders:");
  for (var order in manager.pendingOrders) {
    print("${order.customerName} - ${order.drinkType}");
  }
}
