import 'package:flutter/material.dart';
import 'package:ternak_insang/navigation.dart';
import 'package:ternak_insang/pages/favoritePage.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/loginPage.dart';
import 'package:ternak_insang/pages/marketplacePage.dart';
import 'package:ternak_insang/pages/notificationsPage.dart';
import 'package:ternak_insang/pages/profilePage.dart';
import 'package:ternak_insang/pages/signInPage.dart';
import 'package:ternak_insang/pages/signupPage.dart';
import 'package:ternak_insang/pages/salePage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ternak Insang',
      home: SignIn()
    );
  }
}


