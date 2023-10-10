import 'location_model.dart';


  // String ? name; // tên của nhà hàng
  // String? avatar;// anh của nhà hàng
  // String? background; // nền ảnh / màu
  // String? like;// lượt thích 
  // String? evaluate; // đánh giá nhà hàng
  // String? star; //nhà hàng bao nhiêu sao
  // int? currency; //ngoại tệ tùy nhà hàng chọn tiền nào để giao dịch
class UserModel {
  String? id;
  String? name;// tên của nhà hàng
  String? avatar;// anh của nhà hàng
  String? couverture;
  bool? liked; // lượt thích 
  bool? favourite;
  double? rate;
  int? usd;
  int? priceRange;
  int? review;
  int? follower;
  int? following;
  String? description;
  LocationModel? location;
  String? openTime;
  String? closeTime;
  String? phoneNumber;
  String? website;
  bool? status;

  UserModel();
}

UserModel user1 = UserModel()
  ..id = '1'
  ..name =
      "Huynh Ngoc Hieu"
  ..avatar = 'assets/images/food1.jpg'
  ..couverture =
      'assets/images/food2.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 4.0
  ..usd = 3
  ..priceRange = 3
  ..review = 56
  ..follower = 100
  ..following = 72
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser1
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = true;

UserModel user2 = UserModel()
  ..id = '2'
  ..name = "Huy02"
  ..avatar = 'assets/images/food3.jpg'
  ..couverture =
      'assets/images/food4.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 1.0
  ..usd = 2
  ..priceRange = 3
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser2
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = true;

UserModel user3 = UserModel()
  ..id = '3'
  ..name = "Huy04"
  ..avatar = 'assets/images/food5.jpg'
  ..couverture =
      'assets/images/food6.jpg'
  ..liked = true
  ..favourite = true
  ..rate = 2.0
  ..usd = 4
  ..priceRange = 1
  ..review = 100
  ..follower = 100
  ..following = 100
  ..description = 'aaaaaaaaaaaaa'
  ..location = locationUser3
  ..openTime = '6:00'
  ..closeTime = '20:00'
  ..phoneNumber = '0123456'
  ..website = 'facebook.com'
  ..status = false;
