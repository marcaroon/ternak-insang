import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/articlePage.dart';
import 'package:ternak_insang/pages/drawer.dart';
import 'package:ternak_insang/pages/notificationsPage.dart';
import 'package:ternak_insang/navigation.dart';
import 'package:ternak_insang/pages/profilePage.dart';
import 'package:ternak_insang/pages/salePage.dart';
import 'package:ternak_insang/object.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

const Color biru = Color(0xff023047);
const Color oren = Color(0xfffb8500);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: biru, size: 30, weight: 30),
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.all(0),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'Ternak',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: biru,
                  ),
                ),
                TextSpan(
                  text: 'Insang',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: oren,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                icon: Icon(Icons.notifications)),
            // child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.white,
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const Notifications()));
            //     },
            //     child: const Icon(Icons.notifications, color: biru)),
          )
        ],
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                      padding: const EdgeInsets.fromLTRB(10, 9, 10, 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: biru,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            padding: const EdgeInsets.fromLTRB(12, 4, 12, 5),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: oren,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Kategori',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 1.2175,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft:Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                          child: Image.asset('images/varietas.jpg',
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                      const Text(
                                        'Varietas',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                        ),
                                      )
                                    ],
                                  )
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft:Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                          child: Image.asset('images/jaring.jpg',
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                      const Text(
                                        'Alat',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                        ),
                                      )
                                    ],
                                  )
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft:Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                          child: Image.asset('images/pakan-ikan.jpg',
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                      const Text(
                                        'Pakan Ikan',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                        ),
                                      )
                                    ],
                                  )
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft:Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                          child: Image.asset('images/obat.png',
                                          fit: BoxFit.cover,),
                                        ),
                                      ),
                                      const Text(
                                        'Obat Ikan',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                        ),
                                      )
                                    ],
                                  )
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          color: biru,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 4),
                              blurRadius: 2,
                            ),
                          ]
                        ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          padding: const EdgeInsets.fromLTRB(12, 4, 12, 5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: oren,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Rekomendasi',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              height: 1.2175,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 295,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Recommended(
                                  image: rekom1, text: title1, subtext: under1),
                              Recommended(
                                  image: rekom2, text: title2, subtext: under2),
                              Recommended(
                                  image: rekom3, text: title3, subtext: under3),
                              Recommended(
                                  image: rekom4, text: title4, subtext: under4),
                              Recommended(
                                  image: rekom1, text: title1, subtext: under1),
                              Recommended(
                                  image: rekom2, text: title2, subtext: under2),
                              Recommended(
                                  image: rekom3, text: title3, subtext: under3),
                              Recommended(
                                  image: rekom4, text: title4, subtext: under4),
                              Recommended(
                                  image: rekom1, text: title1, subtext: under1),
                              Recommended(
                                  image: rekom2, text: title2, subtext: under2),
                              Recommended(
                                  image: rekom3, text: title3, subtext: under3),
                              Recommended(
                                  image: rekom4, text: title4, subtext: under4),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                        color: biru, borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Koi',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Sale(image: koi1, text: namaKoi1),
                        Sale(image: koi2, text: namaKoi2),
                        Sale(image: koi3, text: namaKoi3),
                        Sale(image: koi4, text: namaKoi4),
                        Sale(image: koi5, text: namaKoi5),
                        Sale(image: koi6, text: namaKoi6),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                    width: double.infinity,
                    height: 30,
                    decoration: BoxDecoration(
                        color: biru, borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Mungkin anda suka',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Sale(image: koi7, text: namaKoi7),
                        Sale(image: koi8, text: namaKoi8),
                        Sale(image: koi9, text: namaKoi9),
                        Sale(image: koi10, text: namaKoi10),
                        Sale(image: koi11, text: namaKoi11),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}

class Sale extends StatelessWidget {
  final String image, text;
  
  const Sale({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: oren, width: 2),
            boxShadow: const [
              BoxShadow(
                  color: Color(0x3f000000), offset: Offset(1, 4), blurRadius: 5)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: 130,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    image,
                    fit: BoxFit.fill),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: biru),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: const Text(
                'Rp. 325.000',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: oren),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                  color: Colors.red,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                  icon: Icon(Icons.favorite)),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Sales()));
      },
    );
  }
}

class Recommended extends StatelessWidget {
  final String image, text, subtext;

  const Recommended({
    super.key,
    required this.image,
    required this.text,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
      child: InkWell(
        child: Container(
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
                        text,
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
                          image: AssetImage(image),
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
                      subtext,
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
       onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const article()));
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 85,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              width: 65,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    width: 55,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset('images/pakanikan.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                  const Text(
                    'Pakan Ikan',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      height: 1.2175,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
