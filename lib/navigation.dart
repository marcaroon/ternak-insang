import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ternak_insang/pages/favoritePage.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/marketplacePage.dart';
import 'package:ternak_insang/pages/profileNew.dart';
import 'package:ternak_insang/pages/profilePage.dart';

class Navigation extends StatefulWidget {
  int currentIndex = 0;
  List pages = [
    const Home(),
    const marketplace(),
    const Profile()
  ];

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
          iconSize: 35,
          gap: 5,
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
            GButton(
              icon: Icons.home,
              text: "Beranda",
              textStyle: TextStyle(
                fontFamily: 'SFPRO',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: oren,
              ),
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: "Beli",
              textStyle: TextStyle(
                fontFamily: 'SFPRO',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: oren,
              ),
            ),
            GButton(
              icon: Icons.person,
              text: "Profil",
              textStyle: TextStyle(
                fontFamily: 'SFPRO',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: oren,
              ),
            ),
          ]),
    );
  }
}
