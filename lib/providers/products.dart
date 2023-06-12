import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ternak_insang/models/product.dart';
import 'package:http/http.dart' as http;

class Products with ChangeNotifier {
  List<Product> _productItem = [];

  List<Product> get productItem {
    return [..._productItem];
  }

  Future<void> postProduct(String titleProduct,
      String descProduct, double priceProduct, String imageProduct) {
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/products.json');

    return http
        .post(url,
            body: json.encode({
              'titleProduct': titleProduct,
              'descProduct': descProduct,
              'priceProduct': priceProduct,
              'imageProduct': imageProduct
            }))
        .then((response) {
      _productItem.add(Product(
          idProduct: json.decode(response.body)["name"].toString(),
          titleProduct: titleProduct,
          descProduct: descProduct,
          priceProduct: priceProduct,
          imageProduct: imageProduct));
      notifyListeners();
      print(json.decode(response.body.toString()));
    });
  }

  Future<void> dataProduct() async {
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/products.json');

    print(url);

    var hasilGetProduct = await http.get(url);

    var dataProductResponse =
        json.decode(hasilGetProduct.body) as Map<String, dynamic>?;

    _productItem.clear();
    dataProductResponse?.forEach((key, value) {
      _productItem.add(Product(
          idProduct: key,
          titleProduct: value['titleProduct'],
          descProduct: value['descProduct'],
          priceProduct: value['priceProduct'],
          imageProduct: value['imageProduct']));
    });
    notifyListeners();

    print('Data Product Berhasil Ditambahkan');
  }
}
