import 'package:flutter/material.dart';

import 'homePage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text(
          'About Us',
          style: TextStyle(
              fontFamily: 'SFPRO',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: biru),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: oren, width: 2),
                borderRadius: BorderRadius.circular(65)
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/niken-photo.jpg'),
                      radius: 60,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Niken Larasati',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 27,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '082111633004',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: oren, width: 2),
                borderRadius: BorderRadius.circular(65)
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/ammar-photo.jpg'),
                      radius: 60,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muammar Qois',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 27,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'Al Qorni',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 27,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '082111633017',
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}