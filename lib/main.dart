
import 'package:flutter/material.dart';
import 'package:project/Main/Home.dart';
import 'package:project/Main/login.dart';
import 'package:project/Main/screen2.dart';
import 'package:project/Main/screen3.dart';
import 'package:project/Main/screen4.dart';
import 'package:project/Main/screen1.dart';
import 'package:project/Main/try.dart';

void main() {
  runApp(MyApp());
}



 class MyApp extends StatelessWidget{
   @override
   Widget build(BuildContext context){
   return new MaterialApp(
     home: MainPage(),
      routes: {   '/login':(context) => LoginDemo(),
                  '/home':(context) => Homescreen(),
                  '/screen1': (context) => Screen1(),
                  '/screen2': (context) => Screen2(),
                  '/screen3': (context) => Screen3(),
                  '/screen4': (context) => Screen4(),
                  '/try': (context) => CardWidget(),
                },
      );
 }
}

class MainPage extends StatelessWidget{
  Widget build(BuildContext context) {

      return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          elevation: 0,
          title: Text('LOGIN PAGE',
              style: TextStyle(
                  fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body:new Center(
          child: LoginDemo()
         /* Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )
                      ),
                      padding: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                      ),
                    Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                   Navigator.of(context).pushNamed('/login');

                },
                child: Text(
                  'Enter',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
                  ],
                ),
              ),
            
            ],
          ),*/
        ),
    );

    
  }
  }
  
