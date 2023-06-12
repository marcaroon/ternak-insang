import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/loginPage.dart';

import '../providers/auth.dart';

class signUp extends StatefulWidget {
  signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 35),
                height: mediaQueryHeight * 0.48,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Ternak',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: biru,
                          ),
                        ),
                        TextSpan(
                          text: 'Insang',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: oren,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 35),
                  height: mediaQueryHeight * 0.52,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: biru,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, -1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 25),
                          child: const Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          // margin: const EdgeInsets.only(bottom: 12),
                          // width: 275,
                          // height: 50,
                          padding: const EdgeInsets.fromLTRB(50, 10, 50, 5),
                          child: TextFormField(
                            controller: fnameController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(297, 297, 297, 100),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Padding(
                          // margin: const EdgeInsets.only(bottom: 12),
                          // width: 275,
                          // height: 50,
                          padding: const EdgeInsets.fromLTRB(50, 10, 50, 5),
                          child: TextFormField(
                            controller: emailController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'E-Mail',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(297, 297, 297, 100),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Padding(
                          // margin: const EdgeInsets.only(bottom: 30),
                          // width: 275,
                          // height: 50,
                          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                          child: TextFormField(
                            controller: passwordController,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(297, 297, 297, 100),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(1, 0, 0, 11),
                        //   width: 275,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(30),
                        //     boxShadow: const [
                        //       BoxShadow(
                        //         color: Colors.black,
                        //         offset: Offset(0, 4),
                        //         blurRadius: 2,
                        //       ),
                        //     ],
                        //   ),
                        //   child: const TextField(
                        //     decoration: InputDecoration(
                        //       disabledBorder:InputBorder.none,
                        //       hintText: 'Full Name',
                        //     ),
                        //   ),
                        //   child: const Center(
                        //     child: Text(
                        //       'Full Name',
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //         fontFamily: 'Montserrat',
                        //         fontSize: 17,
                        //         fontWeight: FontWeight.w600,
                        //         color: Color.fromRGBO(297, 297, 297, 100),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(0, 0, 1, 11),
                        //   width: 275,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(30),
                        //     boxShadow: const [
                        //       BoxShadow(
                        //         color: Colors.black,
                        //         offset: Offset(0, 4),
                        //         blurRadius: 2,
                        //       ),
                        //     ],
                        //   ),
                        //   child: const Center(
                        //     child: Text(
                        //       'E-Mail',
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //         fontFamily: 'Montserrat',
                        //         fontSize: 17,
                        //         fontWeight: FontWeight.w600,
                        //         color: Color.fromRGBO(297, 297, 297, 100),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(0, 0, 1, 31),
                        //   width: 275,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(30),
                        //     boxShadow: const [
                        //       BoxShadow(
                        //         color: Colors.black,
                        //         offset: Offset(0, 4),
                        //         blurRadius: 2,
                        //       ),
                        //     ],
                        //   ),
                        //   child: const Center(
                        //     child: Text(
                        //       'Password',
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //         fontFamily: 'Montserrat',
                        //         fontSize: 17,
                        //         fontWeight: FontWeight.w600,
                        //         color: Color.fromRGBO(297, 297, 297, 100),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          // margin: const EdgeInsets.fromLTRB(0, 0, 1, 21),
                          padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
                          child: TextButton(
                            onPressed: () async {
                              if (_key.currentState!.validate()) {
                                try {
                                  await authService
                                      .createUserWithEmailAndPassword(
                                          emailController.text,
                                          passwordController.text);
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignIn()));
                                  ;
                                } on FirebaseAuthException catch (error) {
                                  errorMessage = error.message!;
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15.0))),
                                            backgroundColor: Colors.white,
                                            title: const Text(
                                              "Error",
                                              style: TextStyle(color: biru),
                                            ),
                                            content: Text(
                                              errorMessage,
                                              style:
                                                  const TextStyle(color: biru),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Continue",
                                                  style: TextStyle(
                                                      color: oren,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                }
                              }
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 380,
                              height: 55,
                              decoration: BoxDecoration(
                                color: oren,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 4),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1.2175,
                              color: Colors.white,
                            ),
                            children: [
                              const TextSpan(
                                text: 'Already have an account? ',
                              ),
                              TextSpan(
                                  text: 'Sign In',
                                  style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175,
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    decorationColor: Colors.white,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => SignIn()))),
                            ],
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
