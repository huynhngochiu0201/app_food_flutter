import 'package:app_food_flutter/model/location_model.dart';
import 'package:app_food_flutter/model/user_model.dart';

class PostModel {
  String? id;
  UserModel? user;
  String? cuisineType;
  double? rate;
  LocationModel? location;
  String? description;
  List<String>? image;
  int current = 0;

  PostModel();
}

List<PostModel> posts = [
  PostModel()
    ..id = '1'
    ..user = user1
    ..cuisineType = 'Da Nang'
    ..rate = 5.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/food1.jpg',
      'assets/images/food2.jpg'
    ],
  PostModel()
    ..id = '2'
    ..user = user2
    ..cuisineType = 'Quang Nam'
    ..rate = 4.0
    ..location = locationUser2
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/food3.jpg',
      'assets/images/food4.jpg'
    ],
  PostModel()
    ..id = '3'
    ..user = user3
    ..cuisineType = 'Quang Ngai'
    ..rate = 4.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
      'assets/images/food5.jpg',
      'assets/images/food6.jpg',
    ],
  PostModel()
    ..id = '4'
    ..user = user2
    ..cuisineType = 'Ha Noi'
    ..rate = 5.0
    ..location = locationUser1
    ..description =
        'Excepteur a mollis exercitationem. Primis beatae! Quis quos optio montes justo quasi dapibus. Iusto blandit mattis et vitae optio quas nec tellus.'
    ..image = [
     'assets/images/food7.jpg',
      'assets/images/food8.jpg',
    ],
  PostModel()
    ..id = '5'
    ..user = user2
    ..cuisineType = 'Tay Nguyen'
    ..rate = 4.0
    ..location = locationUser2
    ..description = 'Danh sách món ngon Hà Nội nhiều vô số kể. Dù bắt đầu hành trình khám phá ẩm thực Hà vào buổi sáng, buổi trưa, buổi chiều hay... giữa đêm khuya, bạn vẫn sẽ có được trải nghiệm vẹn tròn "hương - vị - sắc".'
    ..image = [
    'assets/images/food2.jpg',
    ],
  PostModel()
    ..id = '6'
    ..user = user3
    ..cuisineType = 'Ho Chi Minh'
    ..rate = 4.0
    ..location = locationUser1
    ..description = 'Lãnh thổ Việt Nam xuất hiện con người sinh sống từ thời đại đồ đá cũ, khởi đầu với các nhà nước Văn Lang, Âu Lạc. Âu Lạc bị nhà Triệu ở phương Bắc thôn tính vào đầu thế kỷ thứ 2 TCN sau đó là thời kỳ Bắc thuộc kéo dài hơn một thiên niên kỷ. Chế độ quân chủ độc lập được tái lập sau chiến thắng của Ngô Quyền trước nhà Nam Hán. Sự kiện này mở đường cho các triều đại độc lập kế tục và sau đó nhiều lần chiến thắng trước các cuộc chiến tranh xâm lược từ phương Bắc cũng như dần mở rộng về phía nam. Thời kỳ Bắc thuộc cuối cùng kết thúc sau chiến thắng trước nhà Minh của nghĩa quân Lam Sơn.Đến thời kỳ cận đại, Việt Nam lần lượt trải qua các giai đoạn Pháp thuộc và Nhật thuộc. Sau khi đánh bại và buộc Nhật Bản đầu hàng, Đồng Minh tạo điều kiện cho Pháp thu hồi Liên bang Đông Dương. Kết thúc Thế chiến II, Việt Nam chịu sự can thiệp trên danh nghĩa giải giáp quân đội Nhật của các nước Đồng Minh bao gồm Anh, Pháp (miền Nam), Trung Hoa Dân Quốc (miền Bắc). Nhà nước Việt Nam Dân chủ Cộng hòa do Mặt trận Việt Minh lãnh đạo ra đời khi Hồ Chí Minh tuyên bố độc lập vào ngày 2 tháng 9 năm 1945 sau thành công của Cách mạng Tháng Tám và chiến thắng Liên hiệp Pháp cùng Quốc gia Việt Nam do Pháp hậu thuẫn trong chiến tranh Đông Dương lần thứ nhất. Sự kiện này dẫn tới việc Hiệp định Genève (1954) được ký kết và Việt Nam bị chia cắt thành hai vùng tập kết quân sự, lấy ranh giới là vĩ tuyến 17. Việt Nam Dân chủ Cộng hoà kiểm soát phần phía bắc còn phía nam do Việt Nam Cộng hoà (nhà nước kế tục Quốc gia Việt Nam) kiểm soát và được Hoa Kỳ ủng hộ. Xung đột về vấn đề thống nhất lãnh thổ đã dẫn tới chiến tranh Việt Nam với sự can thiệp của nhiều nước và kết thúc với chiến thắng của Việt Nam Dân chủ Cộng hòa, Mặt trận Dân tộc Giải phóng miền Nam Việt Nam cùng sự sụp đổ của Việt Nam Cộng hoà vào năm 1975. Chủ quyền phần phía Nam được chính quyền Cộng hoà miền Nam Việt Nam (do Mặt trận Dân tộc Giải phóng miền Nam Việt Nam thành lập) giành quyền kiểm soát. Năm 1976, Việt Nam Dân chủ Cộng hòa và Cộng hoà miền Nam Việt Nam thống nhất thành Cộng hòa xã hội chủ nghĩa Việt Nam.'
    ..image = [
      'assets/images/food1.jpg',
     
    ],
    ];