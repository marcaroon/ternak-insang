import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/models/address.dart';
import 'package:ternak_insang/providers/addresses.dart';

class AddressBuilder extends StatefulWidget {
  const AddressBuilder({
    super.key,
  });


  @override
  State<AddressBuilder> createState() => _AddressBuilderState();
}

class _AddressBuilderState extends State<AddressBuilder> {

  @override
  void initState() {
    Provider.of<Addresses>(context, listen: false).dataAddress();
  }

  @override
  Widget build(BuildContext context) {
    final dataAddress = Provider.of<Addresses>(context).address;

    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index) =>
          ChangeNotifierProvider.value(value: dataAddress[index]),
      itemCount: dataAddress.length,
    );
  }
}
