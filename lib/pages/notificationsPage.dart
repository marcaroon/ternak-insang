import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/object.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: <Widget>[
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ListSrollHorizontalAtas(text: not1),
                            ListSrollHorizontalAtas(text: not2),
                            ListSrollHorizontalAtas(text: not3),
                            ListSrollHorizontalAtas(text: not4)
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 71,
                                    top: 8,
                                    child: Align(
                                      child: SizedBox(
                                          width: 270,
                                          height: 40,
                                          child: Text(
                                            "Ya ini adalah contoh judulnya",
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w700,
                                              color: biru,
                                            ),
                                          )),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5,
                                    top: 5,
                                    child: Align(
                                      child: SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(7),
                                            child: Image(
                                              image: AssetImage('images/koi/asagi.png'),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 71,
                                    top: 46,
                                    child: Align(
                                      child: SizedBox(
                                        width: 250,
                                        height: 12,
                                        child: Text(
                                          'contoh regional hahaha',
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ],
              ),
              // ListTile(
              //   title: Text(
              //     'Selamat pembayaranmu terkonfirmasi'
              //   ),
              // )
            ],
          ),
        ));
  }
}

class ListSrollHorizontalAtas extends StatelessWidget {
  final String text;

  const ListSrollHorizontalAtas({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: InkWell(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 110,
            decoration: BoxDecoration(
                color: oren, borderRadius: BorderRadius.circular(20)),
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
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const article()));
          }
        ),
    );
  }
}
