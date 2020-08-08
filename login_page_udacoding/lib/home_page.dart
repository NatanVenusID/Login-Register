import 'package:flutter/material.dart';
import 'package:login_page_udacoding/sign_up.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Utama"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return SignUp();
              }));
            },
            child: Text("Sign Out"),
          ),
        ),
      ),
    );
  }
}
