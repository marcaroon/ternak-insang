import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/models/address.dart';
import 'package:ternak_insang/pages/loginPage.dart';
import 'package:ternak_insang/pages/signupPage.dart';
import 'package:ternak_insang/pages/wrapper.dart';
import 'package:ternak_insang/providers/addresses.dart';
import 'package:ternak_insang/providers/articles.dart';
import 'package:ternak_insang/providers/listHome.dart';
import 'package:ternak_insang/providers/products.dart';
import 'package:ternak_insang/widgets/sale_product.dart';
import '../providers/auth.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});       

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => article_list()),
        ChangeNotifierProvider(create: (context) => Articles()),
        ChangeNotifierProvider<Addresses>(create: (context) => Addresses()),
        ChangeNotifierProvider(
        create: (context) => AuthService(),),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => wrapper(),
            '/Login': (context) => SignIn(),
            '/Register': (context) => signUp(),
          },
      )
    );
  }
}
