import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/pages/addAddress.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/providers/addresses.dart';
import 'package:ternak_insang/widgets/addressBuilder.dart';

import '../widgets/address_box.dart';

class ListAddress extends StatelessWidget {
  const ListAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dataAddress = Provider.of<Addresses>(context).address;
    final dataMainAddress = dataAddress;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text(
          'Address',
          style: TextStyle(
              fontFamily: 'SFPRO',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: biru),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Address_Kotak(),
                // AddressBuilder(),
                InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: oren)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.add, size: 40),
                            Text(
                              'Add a new Address',
                              style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => createAddress()),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Address_Kotak extends StatelessWidget {
  const Address_Kotak({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dataAddress = Provider.of<Address>(context);
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: oren)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Niken Larasati",
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "082111633004",
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Kota Madiun",
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}