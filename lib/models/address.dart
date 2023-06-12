import 'package:flutter/material.dart';

class Address with ChangeNotifier {
  @required
  String receiver;
  @required
  String noReceiver;
  @required
  String cityReceiver;
  @required
  String streetReceiver;

  Address({
    required this.receiver,
    required this.noReceiver,
    required this.cityReceiver,
    required this.streetReceiver,
  });
}
