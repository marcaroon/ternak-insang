import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: biru),
        centerTitle: true,
        title: const Text(
          'Favorite',
          style: TextStyle(
              fontSize: 23,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              color: biru),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: favoriteQueryHeight * 0.405,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: oren, borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, top: 8),
                      child: Text(
                        'Toko',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: ListView(
                        children: [
                          ListToko(image: fotoSuka1),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: favoriteQueryHeight * 0.405,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: oren, borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, top: 8),
                      child: Text(
                        'Artikel',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListToko extends StatelessWidget {
  final String image;

  const ListToko({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: double.infinity,
        width: 75,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: const Text(
        'Koi Utsuri',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      subtitle: const Text(
        'Rp. 350.000',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}

String fotoSuka1 = 'images/rekom1.jpg';
