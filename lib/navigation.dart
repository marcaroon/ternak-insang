import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ternak_insang/pages/favoritePage.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/marketplacePage.dart';
import 'package:ternak_insang/pages/profilePage.dart';

class Navigation extends StatefulWidget {
  int currentIndex =0;
  List pages = [const Home(), const Favorite(), const marketplace(), const profile()];

  Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget.currentIndex],
      bottomNavigationBar: GNav(
          iconSize: 25,
          gap: 7, 
          backgroundColor: biru,
          color: Colors.white,
          activeColor: oren,
          haptic: true,
          tabBackgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(20),
          onTabChange: (index) {
            setState(() {
              widget.currentIndex = index;
            });
          },
          selectedIndex: 0,
          tabs: const [
          
          GButton(icon: Icons.home, text: "Home",
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: oren,
            ),
          ),
          GButton(icon: Icons.favorite, text: "Like",
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: oren,
            ),
          ),
          GButton(icon: Icons.shop_rounded, text: "Marketplace",
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: oren,
            ),
          ),
          GButton(icon: Icons.person, text: "Profile",
          textStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: oren,
            ),
          ),
        ]
      ),
    );
  }
}