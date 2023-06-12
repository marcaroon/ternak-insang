import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/pages/aboutUs.dart';
import 'package:ternak_insang/pages/addAddress.dart';
import 'package:ternak_insang/pages/createProduct.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/cart.dart';
import 'package:ternak_insang/pages/loginPage.dart';
import 'package:ternak_insang/pages/profilePage.dart';

import '../providers/auth.dart';
import 'createArticle.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return Container(
      decoration: const BoxDecoration(color: biru),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            headerDrawer(),
            listDrawer(
                icon: Icons.person,
                text: 'About Us',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                }
              ),  
            listDrawer(
              icon: Icons.post_add_rounded,
              text: 'Unggah Artikel',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => createArticle()),
                );
              },
            ),
            // listDrawer(
            //   icon: Icons.post_add,
            //   text: 'Unggah Produk',
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => createProduct()),
            //     );
            //   },
            // ),
            // listDrawer(
            //   icon: Icons.post_add,
            //   text: 'Tambah Alamat',
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => createAddress()),
            //     );
            //   },
            // ),
            listDrawer(
                icon: Icons.shopping_cart,
                text: 'Keranjang',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                }
              ),
            // listDrawer(
            //   icon: Icons.post_add,
            //   text: 'Add Product',
            //   onTap: (){
            //      Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => addProduct()),
            //     );
            //   }
            // ),
            listDrawer(
                icon: Icons.access_time,
                text: 'Terakhir Dilihat',
                onTap: () => print('Tap Recent menu')),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Text("Pengaturan",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.white,
                  )),
            ),
            listDrawer(
              icon: Icons.logout,
              text: 'Keluar',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0))),
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
                            onPressed: () async {
                              await authservice.signOut();
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SignIn()));
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
                    }
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget headerDrawer() {
  return UserAccountsDrawerHeader(
    decoration: const BoxDecoration(color: biru),
    currentAccountPicture: ClipOval(
      child: Image(
        image: NetworkImage(FirebaseAuth.instance.currentUser!.photoURL ??
              'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
        fit: BoxFit.cover,
      ),
    ),
    accountName: Text(
      FirebaseAuth.instance.currentUser!.displayName ?? "No Name",
      style: const TextStyle(
          fontSize: 25, fontFamily: 'SFPRO', fontWeight: FontWeight.w700),
    ),
    accountEmail: Text(
      FirebaseAuth.instance.currentUser!.email ?? "<empty email>>",
      style: const TextStyle(
          fontSize: 15, fontFamily: 'SFPRO', fontWeight: FontWeight.w500),
    ),
  );
}

Widget listDrawer(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: oren,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
              fontFamily: 'SFPRO',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
