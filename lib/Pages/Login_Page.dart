import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Container(
          child: Text("Login Page ",
            style: TextStyle(fontSize: 45,color: Colors.blueAccent,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

