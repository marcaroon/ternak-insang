import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/marketplacePage.dart';
import 'package:ternak_insang/pages/profilePage.dart';

const Color hitamAbu = Color.fromARGB(255, 34, 34, 34);

class Cart extends StatelessWidget {
  int simpleIntInput = 1;
  int steppedIntInput = 1;

  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 65,
        elevation: 2,
        iconTheme: IconThemeData(color: hitamAbu),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => const marketplace()));
        //     },
        //     icon: Icon(Icons.arrow_back_rounded),
        //     color: hitamAbu),
        title: const Text(
          'Keranjang',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: hitamAbu),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const profile()));
              },
              icon: Icon(Icons.favorite_border_rounded),
              color: hitamAbu),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            'images/koi/ogon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: const Text(
                                'Koi Ogon',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: hitamAbu),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: const Text(
                                'Rp. 125.000',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: oren),
                              ),
                            ),
                            // InputQty(
                            //   maxVal: 100,
                            //   initVal: 0,
                            //   minVal: -100,
                            //   isIntrinsicWidth: false,
                            //   borderShape: BorderShapeBtn.circle,
                            //   boxDecoration: const BoxDecoration(),
                            //   steps: 10,
                            //   onQtyChanged: (val) {
                            //     print(val);
                            //   },
                            // ),
                        //     QuantityInput(
                        //       iconColor: Colors.white,
                        //       buttonColor: oren,
                        //       elevation: 0,
                        //       value: steppedIntInput,
                        //       step: 1,
                        //       onChanged: (value) => setState(() => steppedIntInput = int.parse(value.replaceAll(',')))
                        // )
                        ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => const profile()));
                          },
                          icon: Icon(Icons.delete),
                          iconSize: 40,
                          color: Color.fromARGB(255, 83, 83, 83)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            'images/koi/ogon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: const Text(
                                'Koi Ogon',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: hitamAbu),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: const Text(
                                'Rp. 125.000',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: oren),
                              ),
                            ),
                            // InputQty(
                            //   maxVal: 100,
                            //   initVal: 0,
                            //   minVal: -100,
                            //   isIntrinsicWidth: false,
                            //   borderShape: BorderShapeBtn.circle,
                            //   boxDecoration: const BoxDecoration(),
                            //   steps: 10,
                            //   onQtyChanged: (val) {
                            //     print(val);
                            //   },
                            // ),
                            QuantityInput(
                                iconColor: Colors.white,
                                buttonColor: oren,
                                elevation: 0,
                                value: simpleIntInput,
                                onChanged: (value) => setState(() =>
                                    simpleIntInput =
                                        int.parse(value.replaceAll(',', '')))),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => const profile()));
                          },
                          icon: Icon(Icons.delete),
                          iconSize: 40,
                          color: Color.fromARGB(255, 83, 83, 83)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            'images/koi/ogon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: const Text(
                                'Koi Ogon',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: hitamAbu),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: const Text(
                                'Rp. 125.000',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: oren),
                              ),
                            ),
                            // InputQty(
                            //   maxVal: 100,
                            //   initVal: 0,
                            //   minVal: -100,
                            //   isIntrinsicWidth: false,
                            //   borderShape: BorderShapeBtn.circle,
                            //   boxDecoration: const BoxDecoration(),
                            //   steps: 10,
                            //   onQtyChanged: (val) {
                            //     print(val);
                            //   },
                            // ),
                            QuantityInput(
                                iconColor: Colors.white,
                                buttonColor: oren,
                                elevation: 0,
                                value: simpleIntInput,
                                onChanged: (value) => setState(() =>
                                    simpleIntInput =
                                        int.parse(value.replaceAll(',', '')))),
                          ],
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => const profile()));
                          },
                          icon: Icon(Icons.delete),
                          iconSize: 40,
                          color: Color.fromARGB(255, 83, 83, 83)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  setState(int Function() param0) {}
}
