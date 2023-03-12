import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/loginPage.dart';
import 'package:ternak_insang/pages/signInPage.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: biru,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/ammar.jpg'),
                        radius: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Ammar',
                          style: TextStyle(
                              color: oren,
                              fontFamily: 'Montserrat',
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text(
                          'ammarqorni@gmail.com',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: biru),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0))),
                                      backgroundColor: Colors.white,
                                      title: const Text(
                                        'Log Out',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            color: biru),
                                      ),
                                      content: const Text(
                                        'Are you sure want to log out?',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: biru),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: oren),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).popUntil(
                                                (route) => route.isFirst);
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        SignIn()));
                                          },
                                          child: const Text(
                                            'Confirm',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: oren),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Log Out',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: biru),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            const DefaultTabController(
              length: 3,
              child: TabBar(
                indicatorColor: oren,
                tabs: <Widget>[
                  Tab(
                    child: Text('Favorit',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: biru),
                      ),
                    ),
                  Tab(
                    child: Text('Alamat',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: biru),
                      ),
                  ),
                  Tab(
                    child: Text('Riwayat',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: biru),
                      ),
                  ),
              ],
            )
          ),
          // TabBarView(
          //   children: <Widget>[
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       color: Colors.yellow,
          //     ),
          //   ])
        ],
      ),
    );
  }
}
