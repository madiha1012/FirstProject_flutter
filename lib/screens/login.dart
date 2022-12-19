import 'dart:js';
import 'package:path/path.dart';
import 'package:class12_18_22/screens/home_view.dart';
import 'package:class12_18_22/utils/text_Contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginView extends StatefulWidget {
  const loginView({Key? key}) : super(key: key);

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  login() {
    if (email == 'madiha@gmai.com' && password == '1234') {
      print('Login Successful');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home_View()),
      );
    } else {
      textConstant.errorText = 'Login Failed';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(textConstant.Login),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            )
          ],
        ),
      ),
    );
  }
}
