import 'package:flutter/material.dart';
import 'dart:convert';
import '../models/article.dart';
import 'package:http/http.dart' as http;

class Articles with ChangeNotifier {
  List<Article> _articleItem = [];
  
  List<Article> get articleItem {
    return [..._articleItem];
  }

  Future<void> postArticle(
      String uidArticle,
      String titleArticle,
      String descArticle,
      String authorArticle,
      String categoryArticle,
      String contentArticle,
      String imageArticle) {
    //String tokent = tokenAccess();
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json');

    //print(_userArticle);
    return http
        .post(url,
            body: json.encode({
              'uidArticle': uidArticle,
              'titleArticle': titleArticle,
              'descArticle': descArticle,
              'authorArticle': authorArticle,
              'categoryArticle': categoryArticle,
              'contentArticle': contentArticle,
              'imageArticle': imageArticle
            }))
        .then((response) {
      _articleItem.add(Article(
          idArticle: json.decode(response.body)["name"].toString(),
          uidArticle: uidArticle,
          titleArticle: titleArticle,
          descArticle: descArticle,
          authorArticle: authorArticle,
          categoryArticle: categoryArticle,
          contentArticle: contentArticle,
          imageArticle: imageArticle));
      notifyListeners();
      print(json.decode(response.body.toString()));

    });
  }

  Future<void> dataMaster() async {
    //String tokent = tokenAccess();
    // print(token);
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json');

    print(url);

    var hasilGetData = await http.get(url);

    var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>?;
    //print(dataResponse);

    _articleItem.clear();
    dataResponse?.forEach(
      (key, value) {
        _articleItem.add(
          Article(
            idArticle: key,
            uidArticle: value["uidArticle"],
            titleArticle: value["titleArticle"],
            descArticle: value["descArticle"],
            imageArticle: value["imageArticle"],
            authorArticle: value["authorArticle"],
            categoryArticle: value["categoryArticle"],
            contentArticle: value["contentArticle"],
          ),
        );
      },
    );
    notifyListeners();

    print("Data Master Berhasil Diambil");
  }
}
