import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  @required
  String idProduct;
  @required
  String titleProduct;
  @required
  String descProduct;
  @required
  double priceProduct;
  @required
  String imageProduct;

  Product ({
    required this.idProduct,
    required this.titleProduct,
    required this.descProduct,
    required this.priceProduct,
    required this.imageProduct
    }
  );
}
