import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg/300px-Ojiya_Nishikigoi_no_Sato_ac_%283%29.jpg',
                fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Koi Utsuri',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: biru
                          ),
                        ),
                        Text(
                          'Rp. 350.000',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: oren
                          ),
                        )
                      ],
                    ),
                    InkWell(
                      child: const Icon(
                        Icons.favorite_border,
                        size: 40),
                      onTap: (){},
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}