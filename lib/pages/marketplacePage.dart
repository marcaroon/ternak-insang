import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/object.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/salePage.dart';
import 'package:ternak_insang/pages/cart.dart';
import 'package:ternak_insang/widgets/menu_sale.dart';
import 'package:ternak_insang/widgets/productBuilder.dart';

import '../providers/products.dart';

class marketplace extends StatelessWidget {
  const marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProduct = Provider.of<Products>(context).productItem;
    final dataMainProduct = dataProduct;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: biru,
          title: Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                // Container(
                //         margin: const EdgeInsets.only(bottom: 12),
                //         width: 275,
                //         height: 50,
                //         child: TextFormField(
                //           textAlign: TextAlign.center,
                //           decoration: InputDecoration(
                //             hintText: 'Search',
                //             hintStyle: const TextStyle(
                //               fontFamily: 'SFPRO',
                //               fontSize: 16,
                //               fontWeight: FontWeight.w600,
                //               color: Color.fromRGBO(297, 297, 297, 100),
                //             ),
                //             fillColor: Colors.white,
                //             filled: true,
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(25),
                //               borderSide: BorderSide.none,
                //             )
                //           ),
                //         ),
                //       ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(297, 297, 297, 100),
                          ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                        )
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                  },
                  icon: const Icon(Icons.trolley),
                  iconSize: 30,)
                // InkWell(
                //     child: Container(
                //       margin: const EdgeInsets.only(left: 20),
                //       height: 40,
                //       child: ClipRRect(
                //         child: Image.asset('images/basket3.png'),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const Cart()));
                //     })
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
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
                                child: Text(
                                  'Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'SFPRO',
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
                                child: Text(
                                  'Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'SFPRO',
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
                                child: Text(
                                  'Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'SFPRO',
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
                                child: Text(
                                  'Contoh headline yang ada di marketplace, ini contoh panjangnya',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'SFPRO',
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
                    height: 50,
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    width: double.infinity,
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            bawahCategories(text: horList1),
                            bawahCategories(text: horList2),
                            bawahCategories(text: horList3),
                            bawahCategories(text: horList4),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 1000,
                      child: ProductBuilder(dataProductMain: dataMainProduct)),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}

class bawahCategories extends StatelessWidget {
  final String text;
  bawahCategories({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: InkWell(
          child: Container(
            margin: const EdgeInsets.only(right: 5),
            height: 30,
            width: 110,
            decoration: BoxDecoration(
                color: oren, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'SFPRO',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => Sales()));
          }),
    );
  }
}


String horList1 = "Terlaris";
String horList2 = "Terbaru";
String horList3 = "Termurah";
String horList4 = "Termahal";
