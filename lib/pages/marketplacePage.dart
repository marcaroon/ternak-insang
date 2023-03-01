import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class marketplace extends StatelessWidget {
  const marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: biru,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(25, 9, 0, 10),
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Color.fromRGBO(297, 297, 297, 100),
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 40,
                child: ClipRRect(
                  child: Image.asset(
                    'images/basket3.png'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 300,
                              height: double.infinity,
                              child: ClipRRect(
                                child: Image.network(
                                  'https://cdns.klimg.com/merdeka.com/i/w/news/2022/03/07/1413982/content_images/670x335/20220406201937-1-ilustrasi-ikan-koi-002-tantri-setyorini.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.6),
                              width: 300,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 10, 10),
                                child: Text('Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 300,
                              height: double.infinity,
                              child: ClipRRect(
                                child: Image.network(
                                  'https://cdns.klimg.com/merdeka.com/i/w/news/2022/03/07/1413982/content_images/670x335/20220307132907-1-pusat-koi-dan-maskoki-nusantara-003-nfi.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.6),
                              width: 300,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 10, 10),
                                child: Text('Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 300,
                              height: double.infinity,
                              child: ClipRRect(
                                child: Image.network(
                                  'https://asset.kompas.com/crops/DY44oLxKyZjiiDaFCpxRwSMb0vM=/192x128:1728x1152/750x500/data/photo/2022/10/01/6337cb4f56eba.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.6),
                              width: 300,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 10, 10),
                                child: Text('Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              width: 300,
                              height: double.infinity,
                              child: ClipRRect(
                                child: Image.network(
                                  'https://cdn-cms.pgimgs.com/static/2021/08/4.-JENIS-IKAN-KOI.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.6),
                              width: 300,
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 7, 10, 10),
                                child: Text('Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: biru,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                          child: Text('Categories',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: [
                              isiCategories(),
                              isiCategories(),
                              isiCategories(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      )
    );
  }
}

class isiCategories extends StatelessWidget {
  const isiCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 85,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 7),
            child: ClipRRect(
              child: Image.asset('images/pakanikan.png'),
            ),
          ),
          const Text(
            'Pakan Ikan',
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: oren
            ),
          )
        ],
      ),
    );
  }
}