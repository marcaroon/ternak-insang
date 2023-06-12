import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/models/product.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:ternak_insang/providers/products.dart';
import 'package:ternak_insang/widgets/sale_product.dart';

class ProductBuilder extends StatefulWidget {
  const ProductBuilder({
    super.key,
    required this.dataProductMain,
  });

  final List<Product> dataProductMain;

  @override
  State<ProductBuilder> createState() => _ProductBuilderState();
}

class _ProductBuilderState extends State<ProductBuilder> {
  bool isInit = true;
  var futureData;

  @override
  void initState() {
    futureData = Provider.of<Products>(context, listen: false).dataProduct();
  }

  @override
  Widget build(BuildContext context) {
    final dataProduct = Provider.of<Products>(context).productItem;
    final dataProductMain = dataProduct;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: BorderSide.strokeAlignOutside),
      shrinkWrap: false,
      physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: dataProductMain[index], child: Sale(),
      ),
      itemCount: dataProductMain.length,
    );
  }
}
