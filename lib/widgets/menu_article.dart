// import 'package:flutter/material.dart';

// import '../pages/articlePage.dart';
// import '../pages/homePage.dart';

// class Recommended extends StatelessWidget {
//   final String image, text, subtext;

//   const Recommended({
//     super.key,
//     required this.image,
//     required this.text,
//     required this.subtext,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
//       child: InkWell(
//         child: Container(
//           height: 70,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(10)),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 71,
//                 top: 8,
//                 child: Align(
//                   child: SizedBox(
//                       width: 270,
//                       height: 40,
//                       child: Text(
//                         text,
//                         textAlign: TextAlign.left,
//                         style: const TextStyle(
//                           fontSize: 13,
//                           fontFamily: 'Montserrat',
//                           fontWeight: FontWeight.w700,
//                           color: biru,
//                         ),
//                       )),
//                 ),
//               ),
//               Positioned(
//                 left: 5,
//                 top: 5,
//                 child: Align(
//                   child: SizedBox(
//                     width: 60,
//                     height: 60,
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(7),
//                         child: Image(
//                           image: AssetImage(image),
//                           fit: BoxFit.cover,
//                         )),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 71,
//                 top: 46,
//                 child: Align(
//                   child: SizedBox(
//                     width: 250,
//                     height: 12,
//                     child: Text(
//                       subtext,
//                       style: const TextStyle(
//                         fontSize: 10,
//                         fontFamily: 'Montserrat',
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff000000),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//        onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => const article()));
//         },
//       ),
//     );
//   }
// }

// class Categories extends StatelessWidget {
//   const Categories({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: SizedBox(
//         height: 85,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
//               width: 65,
//               height: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Color(0x3f000000),
//                     offset: Offset(0, 4),
//                     blurRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
//                     width: 55,
//                     height: 50,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(7),
//                       child: Image.asset('images/pakanikan.png',
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                   const Text(
//                     'Pakan Ikan',
//                     style: TextStyle(
//                       fontSize: 10,
//                       fontWeight: FontWeight.w700,
//                       height: 1.2175,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }