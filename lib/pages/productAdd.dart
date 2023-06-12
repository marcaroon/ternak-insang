import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class productAdd extends StatelessWidget {
  const productAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a product'),
      ),
      body: Column(
        children: [
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Peoduct Name',
              hintStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(297, 297, 297, 100),
              ),
              fillColor: Colors.blue,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Price',
              hintStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(297, 297, 297, 100),
              ),
              fillColor: Colors.blue,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Description',
              hintStyle: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(297, 297, 297, 100),
              ),
              fillColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}