enum Gender { M, F }

class UserModel {
  final String firstName;
  final String lastName;
  final String userId;
  final String pictureURL = "";   //todo: set the default value
  final String phoneNumber;
  final String location;
  final Gender gender = Gender.M;
  final List notifications = [];
  final List likedProductsIds = [];
  final List notifyProductsIds= [];
  final bool isAdmin = false;
  final List products= [];
  final List wishList= [];

  UserModel(
      {
      required this.firstName,
      required this.lastName,
      required this.userId,
      required this.phoneNumber,
      required this.location,
      }
      );
}
