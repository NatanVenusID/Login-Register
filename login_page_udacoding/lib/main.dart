import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_udacoding/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
