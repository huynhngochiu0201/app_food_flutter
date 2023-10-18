import 'package:app_food_flutter/pages/Accueil_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0; //khai báo 1 index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 18.0)
              .copyWith(top: MediaQuery.of(context).padding.top),
          child: Row(
            children: [
              SvgPicture.asset('assets/icon/g10.svg'),
              const Spacer(),
              const Icon(CupertinoIcons.search),
              const SizedBox(width: 18.0),
              SvgPicture.asset('assets/icon/icon-park.svg'),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
      children: [
        const AccueilPage(),
        Container(color: Colors.blue),
        Container(color: Colors.pink),
        Container(color: Colors.green),
        Container(color: Colors.grey),
      ],),





      bottomNavigationBar:  BottomNavBarMallika1(
        selected: currentIndex,
        onPressed:(p0) {
          setState(() {
           currentIndex = p0; 
          });
        },
      ) ,
    );
  }
}

class BottomNavBarMallika1 extends StatelessWidget {
  const BottomNavBarMallika1({Key? key, required this.onPressed, required this.selected}) : super(key: key);
  final Function(int) onPressed;
  final int selected;


  final orangeColor = const Color(0xff33495D);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                    text: "Accueil",
                     icon:'assets/icon/home.svg',
                    // SvgPicture.asset()
                    selected: selected == 0,
                    onPressed: () => onPressed(0)),
                IconBottomBar(
                    text: "Map",
                    icon: 'assets/icon/map-pin.svg',
                    selected: selected == 1,
                    onPressed: () => onPressed(1)),
                IconBottomBar(
                    text: "Add",
                    icon: 'assets/icon/add_fix.svg',
                    selected: selected == 2,
                    onPressed: () => onPressed(2)),
                IconBottomBar(
                    text: "Notifications",
                    icon: 'assets/icon/bell.svg',
                    selected: selected == 3,
                    onPressed: () => onPressed(3)),
                IconBottomBar(
                    text: "Compte",
                    icon: 'assets/icon/user.svg',
                    selected: selected == 4,
                    onPressed: () => onPressed(4))
              ],
            ),
          ),
        ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String icon;
  final bool selected;
  final Function() onPressed;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: deprecated_member_use
          SvgPicture.asset(icon, color: selected? const Color(0xff33495D):const Color(0xffADB6BE),width: 25.0,),
           Text(text,style: TextStyle(color: selected ? const Color(0xff33495D):const Color(0xffADB6BE), fontSize: 10.0, fontWeight: FontWeight.w700),)
    
    
          // IconButton(
          //   onPressed: onPressed,
          //   icon: Icon(
          //     icon,
          //     size: 25,
          //     color: selected ? orangeColor : Colors.black54,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: orangeColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
