import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: biru,
            child: Row(
              children: [
                CircleAvatar()
              ],
            ),
          )
        ],
      ),
    );
  }
}