
import 'dart:ui';

import 'package:flutter/material.dart';
import 'Home.dart';
import 'background.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: Container(
                  
                  height: 200,
                 alignment: Alignment.center,
                 child: Image.network('https://www.99corporates.com/CompanyLogoThumb/U80211KA2013PTC104312.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue[700], borderRadius: BorderRadius.circular(12)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      
    );
  }
}
