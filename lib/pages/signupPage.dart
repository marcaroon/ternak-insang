import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 35),
              height: mediaQueryHeight * 0.53,
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
                padding: const EdgeInsets.only(top: 25),
                height: mediaQueryHeight * 0.47,
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
                      Container(
                        margin: const EdgeInsets.fromLTRB(1, 0, 0, 11),
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 4),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            disabledBorder:InputBorder.none,
                            hintText: 'Full Name', 
                          ),
                        ),
                        // child: const Center(
                        //   child: Text(
                        //     'Full Name',
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       fontFamily: 'Montserrat',
                        //       fontSize: 17,
                        //       fontWeight: FontWeight.w600,
                        //       color: Color.fromRGBO(297, 297, 297, 100),
                        //     ),
                        //   ),
                        // ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 1, 11),
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                            'E-Mail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(297, 297, 297, 100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 1, 31),
                        width: 275,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                            'Password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(297, 297, 297, 100),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 1, 21),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (_) => Home()));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 275,
                            height: 50,
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
                                'Login',
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
                      Container(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 1.2175,
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: 'Dont have an account? ',
                              ),
                              TextSpan(
                                text: 'Sign up',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175,
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  decorationColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  )
                )
          ],
        ),
      ),
    );
  }
}
