import 'package:flutter/material.dart';

class Article with ChangeNotifier {
  @required
  String idArticle;
  @required
  String uidArticle;
  @required
  String titleArticle;
  @required
  String descArticle;
  @required
  String authorArticle;
  @required
  String categoryArticle;
  @required
  String contentArticle;
  @required
  String imageArticle;

  Article({
    required this.idArticle,
    required this.uidArticle,
    required this.titleArticle,
    required this.descArticle,
    required this.authorArticle,
    required this.categoryArticle,
    required this.contentArticle,
    required this.imageArticle,
  });
}
