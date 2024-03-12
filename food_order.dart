import 'dart:async';

// Class untuk merepresentasikan menu item
class MenuItem {
  final String name;
  final int price;

  MenuItem(this.name, this.price);

  @override
  String toString() {
    return '$name - Rp $price';
  }
}

// Class untuk merepresentasikan makanan
class Food extends MenuItem {
  final String category;

  Food(String name, int price, this.category) : super(name, price);

  @override
  String toString() {
    return '$name - Rp $price - Category: $category';
  }
}

// Class untuk merepresentasikan minuman
class Drink extends MenuItem {
  final String size;

  Drink(String name, int price, this.size) : super(name, price);

  @override
  String toString() {
    return '$name - Rp $price - Size: $size';
  }
}

// Class untuk merepresentasikan pesanan
class Order {
  final List<MenuItem> items;

  Order(this.items);

  int calculateTotalPrice() {
    return items.fold(0, (total, item) => total + item.price);
  }

  @override
  String toString() {
    String orderDetails = '';
    for (var item in items) {
      orderDetails += '${item.toString()}\n';
    }
    return orderDetails + 'Total: Rp ${calculateTotalPrice()}';
  }
}

// Class untuk simulasi layanan pemesanan makanan online
class FoodDeliveryService {
  Future<Order> placeOrder(List<MenuItem> selectedItems) async {
    print('Ordering...');
    await Future.delayed(Duration(seconds: 3)); // Simulasi pengiriman pesanan
    print('Order completed!');
    return Order(selectedItems);
  }
}

void main() async {
  var food1 = Food('Nasi Goreng', 25000, 'Main Course');
  var food2 = Food('Ayam Bakar', 35000, 'Main Course');
  var drink1 = Drink('Es Teh Manis', 8000, 'Large');
  var drink2 = Drink('Jus Jeruk', 10000, 'Medium');

  var selectedItems = [food1, food2, drink1, drink2];

  var deliveryService = FoodDeliveryService();
  var order = await deliveryService.placeOrder(selectedItems);

  print('Order Details:');
  print(order);
}
