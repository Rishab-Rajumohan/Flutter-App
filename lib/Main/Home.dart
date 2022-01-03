import 'package:flutter/material.dart';
import 'package:project/Main/categories_screen.dart';
import 'package:project/Main/screen2.dart';
import 'package:project/Main/screen3.dart';
import 'package:project/Main/screen4.dart';
import 'package:project/Main/screen1.dart';
import 'package:project/Main/Home.dart';

import 'background.dart';

class Homescreen  extends StatefulWidget {

  @override
 
  _Homescreen createState() => _Homescreen();
}

class _Homescreen extends State<Homescreen > {
  @override
   void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          elevation: 0,
          title: Text('Employee Information',
              style: TextStyle(
                  fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 30, bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700, borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400],
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
            ),
            ],
                    ),
                  
                  height: 200,
                  
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        )
                        ),
                        padding: EdgeInsets.all(10),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('name',style: TextStyle( color: Colors.white,),),
                          Text('designation',style: TextStyle( color: Colors.white,),),
                          Text('email',style: TextStyle( color: Colors.white,),),
                          Text('Rep mng',style: TextStyle( color: Colors.white,),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CategoriesScreen(),
              )
            ],
          ),
        ),
    );
    
  }
}