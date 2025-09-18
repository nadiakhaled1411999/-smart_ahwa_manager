class Order {
  final String customerName;
  final String drinkType;
  final String instructions;
  bool isCompleted;

  Order({
    required this.customerName,
    required this.drinkType,
    required this.instructions,
    this.isCompleted = false,
  });

  void markCompleted() {
    isCompleted = true;
  }
}
