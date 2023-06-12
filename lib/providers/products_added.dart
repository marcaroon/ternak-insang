// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../models/article_fb.dart';

// class Players with ChangeNotifier {
//   List<ArticleFb> _allPlayer = [];

//   List<ArticleFb> get allPlayer => _allPlayer;

//   int get jumlahPlayer => _allPlayer.length;

//   ArticleFb selectById(String id) =>
//       _allPlayer.firstWhere((element) => element.id == id);

//   Future<void> addPlayer(String name, String position, String image) {
//     DateTime datetimeNow = DateTime.now();

//     Uri url = Uri.parse(
//         "https://http-req-bec2d-default-rtdb.firebaseio.com/players.json");
//     return http
//         .post(
//       url,
//       body: json.encode(
//         {
//           "name": name,
//           "position": position,
//           "imageUrl": image,
//           "createdAt": datetimeNow.toString(),
//         },
//       ),
//     )
//         .then(
//       (response) {
//         print("THEN FUNCTION");
//         _allPlayer.add(
//           ArticleFb(
//             id: json.decode(response.body)["name"].toString(),
//             name: name,
//             position: position,
//             imageUrl: image,
//             createdAt: datetimeNow,
//           ),
//         );

//         notifyListeners();
//       },
//     );
//   }

//   Future<void> editPlayer(
//       String id, String name, String position, String image) {
//     Uri url = Uri.parse(
//         "https://http-req-bec2d-default-rtdb.firebaseio.com/players/$id.json");
//     return http
//         .put(
//       url,
//       body: json.encode(
//         {
//           "name": name,
//           "position": position,
//           "imageUrl": image,
//         },
//       ),
//     )
//         .then(
//       (response) {
//         ArticleFb selectPlayer =
//             _allPlayer.firstWhere((element) => element.id == id);
//         selectPlayer.name = name;
//         selectPlayer.position = position;
//         selectPlayer.imageUrl = image;
//         notifyListeners();
//       },
//     );
//   }

//   Future<void> deletePlayer(String id) {
//     Uri url = Uri.parse(
//         "https://http-req-bec2d-default-rtdb.firebaseio.com/players/$id.json");
//     return http.delete(url).then(
//       (response) {
//         _allPlayer.removeWhere((element) => element.id == id);
//         notifyListeners();
//       },
//     );
//   }
// }