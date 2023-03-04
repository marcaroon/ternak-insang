// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:ternak_insang/pages/homePage.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//               color: const Color.fromARGB(255, 255, 255, 255),
//               height: 500,
//               width: double.infinity,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 250),
//                 child: RichText(
//                   textAlign: TextAlign.center,
//                   text: const TextSpan(
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 32,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: 'Ternak',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           fontSize: 32,
//                           fontWeight: FontWeight.w700,
//                           color: biru
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Insang',
//                         style: TextStyle(
//                           fontFamily: 'Montserrat',
//                           fontSize: 32,
//                           fontWeight: FontWeight.w700,
//                           color: oren
//                         )
//                       )
//                     ]
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               constraints: const BoxConstraints(
//                 maxHeight: double.infinity
//               ),
//               width: double.infinity,
//               height: 375,
//               decoration: const BoxDecoration(
//                 color: biru,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40),
//                   topRight: Radius.circular(40)
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: const [
//                   TextField(
//                     obscureText: true,
//                     style: TextStyle(
//                       fontFamily: 'Montserrat',
//                       fontSize: 15,
//                       color: biru
//                     ),
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(50)),
//                         borderSide: BorderSide(color: biru)
//                       ),
//                       hintText: 'ammarqorni@gmail.com',
//                       hintStyle: TextStyle(
//                         fontFamily: 'Montserrat',
//                         fontSize: 20,
//                         color: Colors.grey
//                       )
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }