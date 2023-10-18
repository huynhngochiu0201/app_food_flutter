// ignore_for_file: file_names

import 'package:app_food_flutter/pages/conten_page.dart';
import 'package:flutter/material.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage>
    with SingleTickerProviderStateMixin {
 
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            Container(
              height: 40.0,
              // margin: const EdgeInsets.symmetric(horizontal: 22.0),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xffEBEDEF)),
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: const Color(0xff33495D),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff33495D),
                tabs: const [
                  Tab(
                    text: 'Restaurants',
                  ),
                  Tab(
                    text: 'Clients',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Divider(thickness: 6.0, color: Color(0xfff5f6f7)),

            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  const ContenPage(),
                  // Container(color: Colors.amber,),
                  Container(color: Colors.amberAccent,),
                  
                ]),
            )

            // ListView()
          ],
        ),
      ),
    );
  }
}
