import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/models/address.dart';

import '../pages/homePage.dart';

class Address_Box extends StatelessWidget {
  const Address_Box({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataAddress = Provider.of<Address>(context);
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: oren)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataAddress.receiver,
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                dataAddress.noReceiver,
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                dataAddress.cityReceiver,
                style: const TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
