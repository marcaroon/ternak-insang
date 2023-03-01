  import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/drawer.dart';
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
          title:  Padding(
            padding: const EdgeInsets.all(0),
            child: RichText(
              textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle (
                    fontFamily: 'Montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Ternak',
                        style: TextStyle (
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: biru,
                        ),
                      ),
                      TextSpan(
                        text: 'Insang',
                        style: TextStyle (
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
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications),)
          ],
        ),
        drawer: DrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,0),
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
                      decoration: BoxDecoration (
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
                            decoration: BoxDecoration (
                              color: oren,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Categories',
                              textAlign: TextAlign.left,
                              style: TextStyle (
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
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text(
                                  'Recommended',
                                  textAlign: TextAlign.left,
                                  style: TextStyle (
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
                                    children: const [
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
                                      Recommended(),
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
                              color: biru,
                              borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Text(
                                'Koi Sales',
                                textAlign: TextAlign.left,
                                style: TextStyle (
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
                              ),
                              Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                              width: double.infinity,
                              height: 30,
                              decoration: BoxDecoration(
                                color: biru,
                                borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text(
                                  'You may like',
                                  textAlign: TextAlign.left,
                                  style: TextStyle (
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
                      ]
                    ),
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
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      width: 150,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: oren,
          width: 2
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3f000000),
            offset: Offset(1, 4),
            blurRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            width: 130,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg/300px-Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg',
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
              color: biru
              ),
            )
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: const Text(
              'Rp. 325.000',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: oren
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: oren,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                  alignment: Alignment.center,
                  child: const Text(
                    'Add to cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.5,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({
    super.key,
    });
    
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
            ),
            child:
            Stack(
              children: [
                const Positioned(
                  left: 71,
                  top: 8,
                  child: Align(
                    child: SizedBox(
                      width: 250,
                      height: 40,
                      child: Text(
                        'Human-Made Noise Disrupts Fish Parenting',
                        textAlign: TextAlign.left,
                        style: TextStyle (
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          color: biru,
                          ),
                        ),
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
                          child: Image.network(
                            'https://cdn.the-scientist.com/assets/articleNo/70050/aImg/46165/spiny-chromis-acanthochromis-polyacanthus-800-o.jpg',
                            fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 71,
                      top: 46,
                      child: Align(
                        child: SizedBox(
                          width: 250,
                          height: 12,
                          child: Text(
                            'Christie Wilcox, PhD | May 23, 2022 | 3 min read',
                            style: TextStyle (
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
                    decoration: BoxDecoration (
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
                    child: 
                    Column(
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
                            'Fish Feed',
                            style: TextStyle (
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