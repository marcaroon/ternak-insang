import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ternak_insang/pages/homePage.dart';

class article extends StatelessWidget {
  String imageArticle;
  String titleArticle;
  String categoryArticle;
  String contentArticle;

  article(this.imageArticle, this.titleArticle, this.categoryArticle,
      this.contentArticle,
      {super.key});

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
                child: Image(image: NetworkImage(
                  imageArticle,
                ),
                fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text(
                            titleArticle,
                            maxLines: null,
                            // overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: biru),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Text(
                            categoryArticle,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: oren),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 30,
                        ))
                    // InkWell(
                    //   child: const Icon(
                    //     Icons.favorite_border,
                    //     size: 30),
                    //   onTap: (){},
                    // )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: Text(
                  contentArticle,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
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
