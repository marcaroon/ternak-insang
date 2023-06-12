// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:provider/provider.dart';
// import 'package:ternak_insang/providers/listHome.dart';
// import 'package:ternak_insang/widgets/article_box.dart';

// // import '../pages/homePage.dart';

// class list_Recommended extends StatelessWidget {
//   const list_Recommended({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final isiArticle = Provider.of<article_list>(context);
//     final dataArticle = isiArticle.articlelist;
//     return ListView.builder(
//       physics: const ScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) => ChangeNotifierProvider.value(
//           value: dataArticle[index], child: Recommended()),
//       itemCount: 4,
//     );
//   }
// }
