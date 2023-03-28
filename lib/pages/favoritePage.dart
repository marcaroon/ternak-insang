import 'package:flutter/material.dart';
import 'package:ternak_insang/object.dart';
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
              fontSize: 20,
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
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: ListView(
                        children: [
                          ListToko(image: koi1, text: namaKoi1),
                          ListToko(image: koi2, text: namaKoi2),
                          ListToko(image: koi3, text: namaKoi3),
                          ListToko(image: koi4, text: namaKoi4),
                          ListToko(image: koi5, text: namaKoi5),
                          ListToko(image: koi6, text: namaKoi6),
                          ListToko(image: koi7, text: namaKoi7),
                          ListToko(image: koi8, text: namaKoi8),
                          ListToko(image: koi9, text: namaKoi9),
                          ListToko(image: koi10, text: namaKoi10),
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
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: ListView(
                        children: [
                          ListArtikel(),
                          ListArtikel(),
                          ListArtikel(),
                          ListArtikel(),
                          ListArtikel(),
                          ListArtikel(),
                        ],
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

class ListArtikel extends StatelessWidget {
  const ListArtikel({
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
            'images/rekom2.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: const Text(
        'Nama artikel yang di sukai',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w600),
        ),
      subtitle: const Text(
        'Isi ringkasan dari nama artikel yang disimpan dan yang disukai oleh user',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.w600),
      ),
    );
  }
}

class ListToko extends StatelessWidget {
  final String image, text;

  const ListToko({
    required this.image,
    required this.text,
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
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
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
