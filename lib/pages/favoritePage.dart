import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: biru),
        centerTitle: true,
        title: const Text(
          'Favorite',
          style: TextStyle(
              fontSize: 23,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: biru),
        ),
      ),
    );
  }
}