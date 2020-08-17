import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_udacoding/home_page.dart';
import 'package:login_page_udacoding/register.dart';

class Loginpage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Loginpage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = "admin", password = "admin";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Form Login & Register"),
          ),
          body: Container(
            margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
            child: ListView(children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    child: Image.asset("assets/flutter.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue[50],
                        filled: true,
                        suffix: Container(
                          width: 5,
                          height: 5,
                          color: Colors.blueGrey,
                        ),
                        prefixIcon: Icon(Icons.person),
                        labelText: "Email",
                        hintText: " Masukkan Email",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    maxLength: 30,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.lightBlue[50],
                        filled: true,
                        suffix: Container(
                          width: 5,
                          height: 5,
                          color: Colors.blueGrey,
                        ),
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Password",
                        hintText: " Masukkan Password",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    maxLength: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Forgot Password?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      Text("Get Now",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 12))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  RaisedButton(
                    child: Text("Login"),
                    color: Colors.lightBlue,
                    onPressed: () {
                      if (usernameController != null &&
                          usernameController.text == "admin" &&
                          passwordController != null &&
                          passwordController.text == "admin")
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                      setState(() {
                        username = usernameController.text;
                      });
                    },
                    
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      RegisterPage()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blueGrey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
