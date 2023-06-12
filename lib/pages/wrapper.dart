import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/navigation.dart';
import 'package:ternak_insang/pages/loginPage.dart';

import '../models/user.dart';
import '../providers/auth.dart';

class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authservice = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authservice.user,
      builder: (_, AsyncSnapshot<User?> snapshot){
        if (snapshot.connectionState == ConnectionState.active){
          final User? user = snapshot.data;
          return user == null? SignIn() : Navigation();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      });
  }
}