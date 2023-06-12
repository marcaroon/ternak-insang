import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/addressPage.dart';
import 'package:ternak_insang/pages/editProfile.dart';
import 'package:ternak_insang/pages/favoritePage.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/loginPage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(FirebaseAuth
                            .instance.currentUser!.photoURL ??
                        'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                    radius: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          FirebaseAuth.instance.currentUser!.displayName ??
                              "No Name",
                          style: const TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: biru),
                        ),
                        Text(
                          FirebaseAuth.instance.currentUser!.email ??
                              "<email empty>",
                          style: const TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: biru),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 2),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileEdit()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  // elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: oren)),
                                ),
                                child: const Text(
                                  'Ubah Profile',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'SFPRO',
                                      fontWeight: FontWeight.w600,
                                      color: biru),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10, top: 2),
                              child: ElevatedButton(
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
                                    // elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(color: oren))),
                                child: const Text(
                                  'Keluar',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'SFPRO',
                                      fontWeight: FontWeight.w600,
                                      color: biru),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Aktivitas saya',
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: biru),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, top: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Icon(Icons.maps_home_work_outlined)),
                          const Text(
                            'Alamat',
                            style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: biru),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListAddress()),
                      );
                    },
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, top: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Icon(Icons.favorite_border_outlined)),
                          const Text(
                            'Favorit',
                            style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: biru),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Favorite()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
