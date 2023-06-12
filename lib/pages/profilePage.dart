import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/editEdo.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/loginPage.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 400,
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
                      CircleAvatar(
                        backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL ?? 'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                        radius: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          FirebaseAuth.instance.currentUser!.displayName ?? "No Name",
                          style: const TextStyle(
                              color: oren,
                              fontFamily: 'SFPRO',
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                        FirebaseAuth.instance.currentUser!.email ?? "Gada email e cok",
                          style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'SFPRO',
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                              },
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                backgroundColor: Colors.white,
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'SFPRO',
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
                                            fontSize: 25,
                                            fontFamily: 'SFPRO',
                                            fontWeight: FontWeight.w600,
                                            color: biru),
                                      ),
                                      content: const Text(
                                        'Are you sure want to log out?',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'SFPRO',
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
                                                fontSize: 17,
                                                fontFamily: 'SFPRO',
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
                                                fontSize: 17,
                                                fontFamily: 'SFPRO',
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
                                  fontSize: 17,
                                  fontFamily: 'SFPRO',
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
              length: 2,
              child: TabBar(
                indicatorColor: oren,
                tabs: <Widget>[
                  Tab(
                    child: Text('Alamat',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SFPRO',
                      fontWeight: FontWeight.w600,
                      color: biru),
                      ),
                  ),
                  Tab(
                    child: Text('Riwayat',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'SFPRO',
                      fontWeight: FontWeight.w600,
                      color: biru),
                      ),
                  ),
              ],
            ),
          ),
          // TabBarView(children: [
          //   Container(
          //     height: 30,
          //     width: 10,
          //     child: Text(
          //       'halo nama saya ammar'
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.black
          //     ),
          //   ),
          //   Container(
          //     height: 30,
          //     width: 10,
          //     child: Text(
          //       'halo nama saya saya'
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.black
          //     ),
          //   )
          // ])
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
          //   ]
          // )
        ],
      ),
    );
  }
}
