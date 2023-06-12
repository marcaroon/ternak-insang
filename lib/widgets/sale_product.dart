import 'package:flutter/material.dart';
import 'package:ternak_insang/models/product.dart';
import 'package:provider/provider.dart';

import '../pages/homePage.dart';
import '../pages/profilePage.dart';
import '../pages/salePage.dart';

class Sale extends StatelessWidget {
  const Sale({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProduct = Provider.of<Product>(context);
    return InkWell(
      child: Container(
        padding:
            const EdgeInsets.only(right: 10, top: 10, left: 10, bottom: 10),
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
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
                child: Image(image: NetworkImage(dataProduct.imageProduct)),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(7),
                child: Text(
                  dataProduct.titleProduct,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      color: biru),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text(
                'Rp. ${dataProduct.priceProduct.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: oren),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Sales(
                    dataProduct.titleProduct,
                    dataProduct.descProduct,
                    dataProduct.imageProduct,
                    dataProduct.priceProduct)));
      },
    );
  }
}
