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
          iconSize: 15,
          gap: 4, 
          backgroundColor: biru,
          color: Colors.white,
          activeColor: oren,
          tabBorderRadius: 30,
          haptic: true,
          tabBackgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
          onTabChange: (index) {
            setState(() {
              widget.currentIndex = index;
            });
          },
          selectedIndex: 0,
          tabs: const [
          
          GButton(icon: Icons.home, text: "Home"),
          GButton(icon: Icons.favorite, text: "Like"),
          GButton(icon: Icons.add_box_rounded, text: "Write"),
          GButton(icon: Icons.explore, text: "Explore"),
          GButton(icon: Icons.person, text: "Profile"),
        ])  ,
    );
  }
}