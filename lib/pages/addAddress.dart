import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/providers/addresses.dart';
import 'package:ternak_insang/providers/products.dart';

import '../providers/articles.dart';

class createAddress extends StatelessWidget {
  createAddress({Key? key}) : super(key: key);
  final TextEditingController receiverController = TextEditingController();
  final TextEditingController noController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController streetReceiver = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text(
          'Add new Address',
          style: TextStyle(
              fontFamily: 'SFPRO',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: biru),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: receiverController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Receiver',
                      hintStyle: TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: noController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'No. WA',
                      hintStyle: TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: cityController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'City',
                      hintStyle: TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: streetReceiver,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Street',
                      hintStyle: TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                        color: oren, borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: TextButton(
                        child: const Text(
                          'Post',
                          style: TextStyle(
                              fontFamily: 'SFPRO',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          Provider.of<Addresses>(context, listen: false)
                              .addAddress(
                                receiverController.text,
                                noController.text,
                                cityController.text,
                                streetReceiver.text);
                          // StatusAlert.show(
                          //   context,
                          //   duration: const Duration(seconds: 3),
                          //   title: 'Article Created',
                          //   subtitle:
                          //       'Yay your article has been created and uploaded!',
                          //   configuration:
                          //       const IconConfiguration(icon: Icons.done),
                          //   maxWidth: 260,
                          // );
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
