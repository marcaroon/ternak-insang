import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/article.dart';
import '../pages/articlePage.dart';
import '../pages/homePage.dart';

class recommendedArticle extends StatelessWidget {
  // final String image, text, subtext;

  const recommendedArticle({
    super.key,
    // required this.image,
    // required this.text,
    // required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Article>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
      child: InkWell(
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Positioned(
                left: 102,
                top: 8,
                child: Align(
                  child: SizedBox(
                      width: 250,
                      height: 70,
                      child: Text(
                        data.titleArticle,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 17,
                          fontFamily: 'SFPRO',
                          fontWeight: FontWeight.w700,
                          color: biru,
                        ),
                      )),
                ),
              ),
              Positioned(
                left: 5,
                top: 5,
                child: Align(
                  child: SizedBox(
                    width: 90,
                    height: 90,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image(
                          image: NetworkImage(data.imageArticle),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
              Positioned(
                left: 102,
                top: 70,
                child: Align(
                  child: SizedBox(
                    width: 250,
                    height: 16,
                    child: Text(
                      data.categoryArticle,
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'SFPRO',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => article(
                      data.imageArticle,
                      data.titleArticle,
                      data.categoryArticle,
                      data.contentArticle)));
        },
      ),
    );
  }
}
