// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:provider/provider.dart';
// import 'package:ternak_insang/models/product.dart';
// import 'package:ternak_insang/widgets/sale_product.dart';
// import 'package:ternak_insang/providers/listHome.dart';

// class list_sale extends StatelessWidget {
//   const list_sale({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final DataMenu = Provider.of<Product>(context);
//     final MenuData = DataMenu.Product;
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const ScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) =>
//           ChangeNotifierProvider.value(value: MenuData[index], child: Sale()),
//       itemCount: 4,
//     );
//   }
// }
