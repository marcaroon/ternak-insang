import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: biru),
          centerTitle: true,
          title: const Text(
            'Notifications',
            style: TextStyle(
                fontSize: 23,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                color: biru),
          ),
        ),
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    color: oren,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    color: oren,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    color: oren,
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}