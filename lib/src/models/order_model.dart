
class OrderProductModel {
  final String id;
  final String name;
  final String price;
  final String image;
  final String quantity;

  OrderProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.quantity,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      quantity: json['quantity'],
    );
  }
}



class OrderModel {
  final String id;
  final String name;
  final String total;  
  final String address;
  final String phone;
  final String status;
  final String date;
  final List<dynamic> products;

  OrderModel({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.status,
    required this.date,
    required this.total,
    required this.products,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      phone: json['phone'],
      status: json['status'],
      date: json['date'],
      total: json['total'],
      products: json['products'],
    );
  }
}