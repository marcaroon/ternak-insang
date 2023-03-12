import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/drawer.dart';
import 'package:ternak_insang/pages/notificationsPage.dart';
import 'package:ternak_insang/navigation.dart';
import 'package:ternak_insang/pages/profilePage.dart';
import 'package:ternak_insang/pages/salePage.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                              Categories(),
                            ],
                          ),
                        )
                      ],
                    )),
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
                      ]),
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
                    children: const [
                      Sale(),
                      Sale(),
                      Sale(),
                      Sale(),
                      Sale(),
                      Sale(),
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
                    children: const [
                      Sale(),
                      Sale(),
                      Sale(),
                      Sale(),
                      Sale(),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class Sale extends StatelessWidget {
  const Sale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
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
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg/300px-Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg',
                    fit: BoxFit.fill),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: const Text(
                  'Koi Utsuri',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
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
                    fontSize: 14,
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

  Recommended({
    required this.image,
    required this.text,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
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
                    )
                  ),
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

//Gambar Recommended
String rekom1 = "images/rekom1.jpg";
String rekom2 = "images/rekom2.jpg";
String rekom3 = "images/rekom3.jpg";
String rekom4 = "images/rekom4.jpg";

//Text Title Recommended
String title1 = "9 Ikan Paling Berbahaya di Dunia, Bisa Menyebabkan Kematian";
String title2 = "Dosen Unpad: Ini 5 Tips Memilih Ikan Segar";
String title3 = "Harga Ikan Tongkol Mahal Jadi Penyumpang Tertinggi Inflasi di Aceh";
String title4 = "Grimsby Town Gemparkan Piala FA, Pasukan Ikan 5 Kali Bunuh Raksasa";

//Text Bawah Title di Recommended
String under1 = "TREN • 01/03/2023, 22:00 WIB";
String under2 = "EDUKASI • 01/03/2023, 14:49 WIB";
String under3 = "REGIONAL • 01/03/2023, 18:13 WIB";
String under4 = "LIGA INGGRIS • 02/03/2023, 06:00 WIB";

//Gambar Sale
String sale1 = "";
