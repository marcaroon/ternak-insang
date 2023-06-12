import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ternak_insang/models/address.dart';
import 'package:http/http.dart' as http;

class Addresses with ChangeNotifier {
  List<Address> _address = [];

  List<Address> get address {
    return [..._address];
  }

  Future<void> addAddress(String Receiver, String noReceiver,
      String cityReceiver, String streetReceiver) {
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/address.json');

    return http
        .post(url,
            body: json.encode({
              'Receiver': Receiver,
              'noReceiver': noReceiver,
              'cityReceiver': cityReceiver,
              'streetReceiver': streetReceiver
            }))
        .then((response) {
      _address.add(Address(
        receiver: Receiver,
        noReceiver: noReceiver,
        cityReceiver: cityReceiver,
        streetReceiver: streetReceiver,
      ));
      notifyListeners();
      print(json.decode(response.body.toString()));
    });
  }

  Future<void> dataAddress() async {
    Uri url = Uri.parse(
        'https://ternak-insang-default-rtdb.asia-southeast1.firebasedatabase.app/address.json');

    print(url);

    var hasilGetAddress = await http.get(url);

    var dataProductResponse =
        json.decode(hasilGetAddress.body) as Map<String, dynamic>?;

    _address.clear();
    dataProductResponse?.forEach((key, value) {
      _address.add(Address(
          receiver: value['Receiver'],
          noReceiver: value['noReceiver'],
          cityReceiver: value['cityReceiver'],
          streetReceiver: value['streetReceiver']));
    });
    notifyListeners();

    print('Data Address Berhasil Ditambahkan');
  }
}
