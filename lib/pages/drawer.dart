import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/pages/profilePage.dart';
import 'package:ternak_insang/pages/signInPage.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       color: biru
      ),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            headerDrawer(),
            listDrawer(
              icon: Icons.person,
              text: 'Profile',
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profile()),
                );
              },
            ),
            listDrawer(
              icon: Icons.shopping_cart,
              text: 'Cart',
              onTap: () => print('Tap Shared menu')),
            listDrawer(
              icon: Icons.access_time,
              text: 'Recently Viewed',
              onTap: () => print('Tap Recent menu')),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Text("Settings",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.white,
                )
              ),
            ),
            listDrawer(
              icon: Icons.logout,
              text: 'Log Out',
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (context) {
                    return AlertDialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      backgroundColor: Color.fromARGB(255, 34, 34, 34),
                      title: const Text("Sign Out", style: TextStyle(color: Colors.white),),
                      content: const Text("Are you sure you want to log out?", style: TextStyle(color: Colors.white),),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("Cancel", style: TextStyle(color: oren, fontWeight: FontWeight.bold),),
                        ),
                        TextButton(onPressed: (){
                          Navigator.of(context).popUntil((route) => route.isFirst);
                          Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (BuildContext context) => signIn()));
                        }, child: const Text("Confirm", style: TextStyle(color: oren, fontWeight: FontWeight.bold),),
                        ),
                      
                      ],
                    );
                  }
                  );
              },),
          ],
        ),
      ),
    );
  }
}

Widget headerDrawer() {
  return const UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('images/ammar.jpg'),
        fit: BoxFit.cover,
        ),
      ),
      accountName: Text(
        'Ammar',
        style: TextStyle(
          fontSize: 25,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700
          ),
        ),
      accountEmail: Text(
        'ammarqorni@gmail.com',
        style: TextStyle(
          fontSize: 10,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500
          ),
        ),
      );
    }

Widget listDrawer(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
       return ListTile(
        title: Row(
          children: <Widget>[
            Icon(icon, color: oren,),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          onTap: onTap,
    );
}