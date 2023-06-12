import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class Sales extends StatelessWidget {
  String title;
  String description;
  double price;
  String imageUrl;

  Sales(this.title, this.description, this.imageUrl, this.price, {super.key});

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
                child: Image(image: NetworkImage(imageUrl)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: biru),
                        ),
                        Text(
                          price.toString(),
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: oren),
                        )
                      ],
                    ),
                    InkWell(
                      child: const Icon(Icons.favorite_border, size: 40),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                child: Text(
                description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                  ),  
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
