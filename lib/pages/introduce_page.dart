// import 'package:app_food_flutter/model/post_model.dart';
import 'package:app_food_flutter/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({super.key, required this.user});
  final UserModel user;

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            widget.user.couverture ?? '',
            height: 168.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top +
                8.0, // Cần dùng top: MediaQuery.of(context).padding.top +8.0 để bõ qua các StateBar như là dọt nước tai thỏ ...
            left: 22.0,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                child: SvgPicture.asset('assets/icon/back-icon.svg'),
              ),
            ),
          ),
          Positioned.fill(
            top: 148.0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView(
                children: [
                  Text(
                    widget.user.name ?? '',
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ), 
          ),
          Positioned(
            top: 168 / 2 - 35,
            left: MediaQuery.of(context).size.width / 2 -
                35, // Dùng MediaQuery.of(context).size.width /2 -35 để canh chỉnh ảnh vào giữa
            // right: 0.0,
            child: CircleAvatar(
              radius: 35.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 33.0,
                backgroundImage: Image.asset(
                  widget.user.avatar ?? '',
                  fit: BoxFit.contain,
                ).image, //StatefulWidget là phải có Widget
              ),
            ),
          ),
          const Positioned(
            right: 22.0,
            bottom: 0,
            child: Row(
              children: [
                customStar(
                  icon: 'assets/icon/Frame1sao.svg',
                ),
                SizedBox(
                  width: 10.0,
                ),
                customStar(
                  icon: 'assets/icon/HeartStraight.svg',
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class customStar extends StatelessWidget {
  const customStar({
    super.key,
    required this.icon,
  });
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0.0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
