import 'package:flutter/material.dart';
import 'package:ternak_insang/models/article.dart';
import 'package:ternak_insang/models/product.dart';

List<Article> _articleItem = [];

// class home_List with ChangeNotifier {
//   final List<Product> _homeList = [
//     Product('Koi Asagi', 'description', 325000, "images/koi/asagi.png"),
//     Product('Koi Chagoi', 'description', 200000, "images/koi/chagoi.png"),
//     Product('Koi Geromo', 'description', 450000, "images/koi/geromo.png"),
//     Product('Koi Ki Utsuri', 'description', 300000, "images/koi/ki-utsuri.png"),
//     Product('Koi Kumonryu', 'description', 135000, "images/koi/kumonryu.png"),
//     Product('Koi Ogon', 'description', 175000, "images/koi/ogon.png"),
//     Product('Koi Tancho', 'description', 455000, "images/koi/tancho.png"),
//   ];
//   List<Product> get homeList {
//     return [..._homeList];
//   }
// }

class article_list with ChangeNotifier {
  final List<Article> _articleList = [
    Article(
      idArticle: '01',
      uidArticle: 'name1',
      titleArticle: '9 Ikan Paling Berbahaya di Dunia, Bisa Menyebabkan Kematian',
      descArticle: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
      authorArticle: 'Ammar',
      categoryArticle: 'category 1',
      contentArticle: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
      imageArticle: 'images/rekom1.jpg'),
    Article(
      idArticle: '02',
      uidArticle: 'name2',
      titleArticle: 'Dosen Unpad: Ini 5 Tips Memilih Ikan Segar',
      descArticle: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
      authorArticle: 'Ammar',
      categoryArticle: 'category 2',
      contentArticle: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
      imageArticle: 'images/rekom2.jpg'),
    Article(
      idArticle: '03',
      uidArticle: 'name3',
      titleArticle: 'Harga Ikan Tongkol Mahal Jadi Penyumpang Tertinggi Inflasi di Aceh',
      descArticle: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
      authorArticle: 'Ammar',
      categoryArticle: 'category 3',
      contentArticle: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
      imageArticle: 'images/rekom3.jpg'),
    Article(
      idArticle: '04',
      uidArticle: 'name4',
      titleArticle: 'Grimsby Town Gemparkan Piala FA, Pasukan Ikan 5 Kali Bunuh Raksasa',
      descArticle: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
      authorArticle: 'Ammar',
      categoryArticle: 'category 4',
      contentArticle: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
      imageArticle: 'images/rekom4.jpg'),
  ];
  List<Article> get articlelist {
    return [..._articleList];
  }
}
