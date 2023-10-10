// import 'package:flutter/cupertino.dart';
// import 'package:app_food_flutter/model/post_model.dart';
// import 'dart:js_util';

import 'package:app_food_flutter/model/post_model.dart';
import 'package:app_food_flutter/model/user_model.dart';
import 'package:app_food_flutter/pages/introduce_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContenPage extends StatefulWidget {
  const ContenPage({super.key});

  @override
  State<ContenPage> createState() => _ContenPageState();
}

class _ContenPageState extends State<ContenPage> {
  //  int pageViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              final post = posts[
                  index]; // Tạo đối tường mới để truyền vào (post.user?.avatar ?? ''),
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  IntroducePage(
                        user: post.user ?? UserModel(), 
                      ),)); // Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroducePage(),) dòng này để truyền qua 1 pages khác 
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage(post.user?.avatar ?? ''),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.user?.name ?? '',
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff33495D)),
                            ),
                            Row(
                              children: [
                                Text(
                                  post.cuisineType ?? '',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffF19B15),
                                  ),
                                ),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0)),
                                const CircleAvatar(
                                  radius: 2.0,
                                  backgroundColor: Color(0xffF19B15),
                                ),
                                const SizedBox(width: 4.0,),
                                ...List.generate(
                                    post.user?.usd ?? 0,
                                    (index) => SvgPicture.asset(
                                        'assets/icon/Frame.svg')),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Divider(thickness: 2.0, color: Color(0xfff5f6f7)),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icon/star.svg'),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                          '${post.user?.rate ?? 0.0} (${post.user?.review ?? ''} avis)'),
                      const SizedBox(
                        width: 43.0,
                      ),
                      SvgPicture.asset('assets/icon/map-pin.svg'),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(post.cuisineType ?? '')
                    ],
                  ),
                  Text(
                    post.description ?? '',
                    maxLines: 3,
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff85929E),
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    height: 128.0,
                    child: Stack(
                      children: [
                        PageView(
                          onPageChanged: (value) {
                            setState(() {
                               post.current = value;
                            });
                          },
                          children: [
                            ...List.generate(
                              post.image?.length ?? 0,
                              (index) => ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  post.image?[index] ?? '',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        Positioned(
                          bottom: 6.0,
                          right: 6.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:8.0),
                            child: Container(
                              
                              decoration:BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(9)
                              ),
                              
                              child: Text('${post.current + 1}/${post.image?.length}',style: const TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Colors.white),) ,
                            ),
                          ),)
                      ],
                    ),
                  
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 6.0,
                color: Color(0xfff5f6f7),
              );
            },
            itemCount: posts.length));
  }
}
