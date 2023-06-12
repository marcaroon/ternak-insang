import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/models/article.dart';
import 'package:ternak_insang/pages/drawer.dart';
import 'package:ternak_insang/pages/notificationsPage.dart';
import 'package:ternak_insang/pages/salePage.dart';
import 'package:ternak_insang/providers/articles.dart';
import 'package:ternak_insang/providers/products.dart';
import 'package:ternak_insang/widgets/menu_sale.dart';
import 'package:ternak_insang/widgets/productBuilder.dart';
import 'package:ternak_insang/widgets/recommendedArticle.dart';

import '../widgets/articleBuilder.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

const Color biru = Color(0xff023047);
const Color oren = Color(0xfffb8500);

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context).articleItem;
    final dataProduct = Provider.of<Products>(context).productItem;
    final dataMainProduct = dataProduct;
    final dataMain = data;
    // final isiArticle = Provider.of<article_list>(context);
    // final dataArticle = isiArticle.articlelist;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // centerTitle: true,
        iconTheme: IconThemeData(color: biru, size: 30, weight: 30),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Hi, ',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold,
                      color: biru
                    )
                  ),
                  TextSpan(
                    text: FirebaseAuth.instance.currentUser!.displayName ?? "No Name",
                    style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.bold,
                      color: biru
                    )
                  ),
                ]
              )),
          ),
          // child: RichText(
          //   textAlign: TextAlign.center,
          //   text: const TextSpan(
          //     style: TextStyle(
          //       fontFamily: 'Montserrat',
          //       fontSize: 25,
          //       fontWeight: FontWeight.w600,
          //       color: Colors.black,
          //     ),
          //     children: [
          //       TextSpan(
          //         text: 'Ternak',
          //         style: TextStyle(
          //           fontFamily: 'Montserrat',
          //           fontSize: 25,
          //           fontWeight: FontWeight.w700,
          //           color: biru,
          //         ),
          //       ),
          //       TextSpan(
          //         text: 'Insang',
          //         style: TextStyle(
          //           fontFamily: 'Montserrat',
          //           fontSize: 25,
          //           fontWeight: FontWeight.w700,
          //           color: oren,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 7),
        //     child: IconButton(
        //         onPressed: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => Notifications()));
        //         },
        //         icon: Icon(Icons.notifications)),
        //     // child: ElevatedButton(
        //     //     style: ElevatedButton.styleFrom(
        //     //       backgroundColor: Colors.white,
        //     //     ),
        //     //     onPressed: () {
        //     //       Navigator.push(
        //     //           context,
        //     //           MaterialPageRoute(
        //     //               builder: (context) => const Notifications()));
        //     //     },
        //     //     child: const Icon(Icons.notifications, color: biru)),
        //   )
        // ],
      ),
      endDrawer: const DrawerWidget(),
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
                              fontSize: 17,
                              fontFamily: 'SFPRO',
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
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            'images/varietas-ikon.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Varietas',
                                        style: TextStyle(
                                            fontFamily: 'SFPRO',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
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
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            'images/alat-icon.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Alat',
                                        style: TextStyle(
                                            fontFamily: 'SFPRO',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
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
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        padding: EdgeInsets.all(5),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            'images/varietas-icon.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pakan Ikan',
                                        style: TextStyle(
                                            fontFamily: 'SFPRO',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
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
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 7),
                                        height: 70,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                          child: Image.asset(
                                            'images/obat-icon.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Obat Ikan',
                                        style: TextStyle(
                                            fontFamily: 'SFPRO',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
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
                            fontSize: 17,
                            fontFamily: 'SFPRO',
                            fontWeight: FontWeight.w700,
                            height: 1.2175,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 295, child: ArticleBuilder(dataMain: dataMain))
                        ],
                      ),
                    ),
                  
                // Container(
                //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                //   padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                //   width: double.infinity,
                //   height: 30,
                //   decoration: BoxDecoration(
                //       color: biru, borderRadius: BorderRadius.circular(10)),
                //   child: const Text(
                //     'Koi',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       fontSize: 17,
                //       fontFamily: 'SFPRO',
                //       fontWeight: FontWeight.w700,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //     width: double.infinity,
                //     height: 250,
                //     child: ProductBuilder(dataProductMain: dataMainProduct)),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                //   padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                //   width: double.infinity,
                //   height: 30,
                //   decoration: BoxDecoration(
                //       color: biru, borderRadius: BorderRadius.circular(10)),
                //   child: const Text(
                //     'Mungkin anda suka',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       fontSize: 17,
                //       fontFamily: 'SFPRO',
                //       fontWeight: FontWeight.w700,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: double.infinity,
                //   height: 250,
                //   child: ProductBuilder(dataProductMain: dataMainProduct),
                //   // child: ListView(
                //   //   scrollDirection: Axis.horizontal,
                //   //   children: [
                //   //     Sale(image: koi7, text: namaKoi7),
                //   //     Sale(image: koi8, text: namaKoi8),
                //   //     Sale(image: koi9, text: namaKoi9),
                //   //     Sale(image: koi10, text: namaKoi10),
                //   //     Sale(image: koi11, text: namaKoi11),
                //   //   ],
                //   // ),
                // )
                SizedBox(height: 1000, child: ProductBuilder(dataProductMain: dataMainProduct)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class SaleCoba extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Container(
//         padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
//         margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//         width: 150,
//         height: 100,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: oren, width: 2),
//             boxShadow: const [
//               BoxShadow(
//                   color: Color(0x3f000000), offset: Offset(1, 4), blurRadius: 5)
//             ]),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               margin: const EdgeInsets.only(bottom: 5),
//               width: 130,
//               height: 100,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                     'images\koi\shiro-utsuri.png',
//                     fit: BoxFit.fill),
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.all(7),
//                 child: Text(
//                   'Koi Utsuri',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 15,
//                       fontFamily: 'Montserrat',
//                       fontWeight: FontWeight.w700,
//                       color: biru),
//                 )),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//               margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
//               child: const Text(
//                 'Rp. 325.000',
//                 style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: 'Montserrat',
//                     fontWeight: FontWeight.w600,
//                     color: oren),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(0),
//               child: IconButton(
//                   color: Colors.red,
//                   iconSize: 30,
//                   onPressed: () {
//                     // Navigator.push(context,
//                     //     MaterialPageRoute(builder: (context) => profile()));
//                   },
//                   icon: Icon(Icons.favorite)),
//             )
//           ],
//         ),
//       ),
//       onTap: () {
//         // Navigator.push(
//         //     context, MaterialPageRoute(builder: (context) => Sales()));
//       },
//     );
//   }
// }

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
