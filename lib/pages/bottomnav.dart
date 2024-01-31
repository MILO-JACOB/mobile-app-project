import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mob_application/pages/basket.dart';
import 'package:mob_application/pages/home.dart';
import 'package:mob_application/pages/museum.dart';
import 'package:mob_application/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currenTabIndex=0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Basket basket;
  late Museum museum;
  late Profile profile;
  
  @override
  void initState() {
    homepage=const Home();
    basket=const Basket();
    museum=const Museum();
    profile=const Profile();
    pages=[homepage, basket, profile, museum];

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 30,
        backgroundColor: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currenTabIndex=index;
          });
        },

        items: const [
      Icon(
        Icons.home_outlined,
        color: Colors.black,
    ),
    Icon(
        Icons.shopping_bag_outlined,
        color: Colors.black,
    ),
    Icon(
        Icons.museum_outlined,
        color: Colors.black,
    ),
    Icon(
        Icons.person_outlined,
        color: Colors.black,
    ),
    
    ]),
    body: pages[currenTabIndex],
    );
  }
}

class Search {
}