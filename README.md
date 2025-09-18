 # ☕ Smart Ahwa Manager (مدير القهوة الذكية)

## 📌 Description
A demo application built with **Flutter** to manage customer orders in a traditional Cairo coffee shop (Ahwa).  
The app allows the owner to add orders with customer name, drink type (e.g., Shai, Turkish coffee, Hibiscus tea), and special instructions (e.g., “extra mint”).  
Orders can be marked as completed, pending orders can be viewed in a simple UI, and sales reports can be generated in the console.

---

## 🛠️ Features
- Add a new order with customer name + drink type + special notes.
- Mark orders as **completed** ✅.
- Display pending orders in the main screen.
- Generate reports in the **console**:
  - Sales report by drink type.
  - Total number of orders.

---

## 📂 Project Structure
- `models/order.dart` → Represents the order object (**Encapsulation**).
- `services/order_manager.dart` → Manages orders (**SRP**).
- `services/report_generator.dart` → Generates reports (**SRP + OCP**).
- `screens/home_screen.dart` → Flutter UI for displaying orders.
- `main.dart` → Entry point for the UI version.
- `main_console.dart` → Entry point for console testing & reports.

---

## 🎯 OOP & SOLID Principles Applied
- **Encapsulation**: Order data and behaviors are grouped inside the `Order` class.  
- **Abstraction**: Logic (Manager, Reports) is separated from UI.  
- **SRP (Single Responsibility Principle)**: Each class has a single, clear responsibility.  
- **OCP (Open/Closed Principle)**: Code is open for extension (e.g., new reports, new drinks) but closed for modification of existing classes.  

---

## 📸 Screenshots
 ### Console Output
<img width="1005" height="245" alt="6" src="https://github.com/user-attachments/assets/1a4c90cd-70c4-4c75-b955-ac75d9ade363" />

---
