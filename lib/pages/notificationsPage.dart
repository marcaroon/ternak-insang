import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  ListSrollHorizontalAtas(text: not1,),
                  ListSrollHorizontalAtas(text: not2,),
                  ListSrollHorizontalAtas(text: not3,),
                  ListSrollHorizontalAtas(text: not4,),
                ],
              ),
              Row(
                children: const [
                  Text('HAHAHAHAHAHAHAHAHAHAHAHAHAHAHA')
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ListSrollHorizontalAtas extends StatelessWidget {
  final String text;

  ListSrollHorizontalAtas({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 30,
        width: 110,
        decoration:
            BoxDecoration(color: oren, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 13,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

//Isi teks ScrollHorizontalAtas
String not1 = "Koi Updates";
String not2 = "News";
String not3 = "Payment";
String not4 = "You may like";