class ProductModel {
  // 1 == jomla / 2 == mofrad
  final int type;
  final String id;
  final String productName;
  final String price;
  final String discountPercentage;
  final List likedUsersIds = [];
  final List picturesUrls;
  final String description;
  final String category;
  final String rating;
  final bool isEmpty = false;
  final List events = [];
  final bool isDiscount;

  ProductModel({
    required this.type,
    required this.isDiscount,
    required this.productName,
    required this.discountPercentage,
    required this.picturesUrls,
    required this.rating,
    required this.id,
    required this.price,
    required this.description,
    required this.category,
    required List events,
  });
}
