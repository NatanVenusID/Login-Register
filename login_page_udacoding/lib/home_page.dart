import 'package:flutter/material.dart';
import 'package:login_page_udacoding/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    String username = "admin", password = "admin";
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman Utama"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Text("username: $username"),
            SizedBox(height: 30,),
            Text("password: $password"),
            SizedBox(height: 200,),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Loginpage();
                  }));
                },
                child: Text("Sign Out"),
              ),
            ),
          ],
        ),
      ),
    );
    
 
  }
}
