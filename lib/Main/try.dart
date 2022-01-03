import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'background.dart';

class CardWidget extends StatefulWidget {
  // right now it only accepts title, but you can add more
  // arguments to be accepted by this widget
  CardWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  // responsible for toggle
  bool _showData = false;
  bool _showData1 = false;
  bool _showData2 = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
        title: Text('Page 1',
            style: TextStyle(
                fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),

    body: SingleChildScrollView(
      child: Container(
         margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 10.0),
            // list card containing country name
            GestureDetector(
              onTap: (){
                setState(() => _showData = !_showData);
              },
              child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(12.0),
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
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // add your other icon here
                    Text(
                        '   Basic Information :',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'YOUR_FONT_FAMILY',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //backgroundColor: Colors.blue,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                  ]
                )
              )
            )
            ),

            _showData ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("          Employee ID               :      ",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                              Text("Output",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("          Date of Birth               :      ",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                              Text("Output",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("          Blood Group               :      ",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                              Text("Output",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("           Marital Status           :      ",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                              Text("Output",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("           Employee Status      :      ",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                              Text("Output",
                                  style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                     
                       
                        
                    ],       
            ) : SizedBox() ,



            GestureDetector(
              onTap: (){
                setState(() => _showData1 = !_showData1);
              },
              child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(12.0),
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
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // add your other icon here
                    Text(
                        '   Employment Information:',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'YOUR_FONT_FAMILY',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //backgroundColor: Colors.blue,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                  ]
                )
              )
            )
            ),


            // this is the company card which is toggling based upon the bool
            
            
            _showData1 ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("          Reporting Manager :      ",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("          Position                     :      ",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("           Grade                        :      ",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("           Experience               :      ",
                                style: TextStyle( 
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("           Past Experience      :      ",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("           Total Experience     :      ",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            Text("Output",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                       
                    
                    ],       
            ) : SizedBox(),
            
            GestureDetector(
              onTap: (){
                setState(() => _showData2 = !_showData2);
              },
              child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.circular(12.0),
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
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // add your other icon here
                    Text(
                        '   Basic Information :',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'YOUR_FONT_FAMILY',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //backgroundColor: Colors.blue,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                  ]
                )
              )
            )
            ),

            _showData2 ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Card(
                    // color: Colors.blue,
                    Text(
                      '   Contact Details:',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'YOUR_FONT_FAMILY',
                        fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.underline,
                      ),
                    ),
                    //),

                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("   Primary address         :",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Address',
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("   Secondary address     :",
                                style: TextStyle(
                                    fontFamily: 'YOUR_FONT_FAMILY',
                                    fontWeight: FontWeight.bold)),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Address',
                              ),
                            ),
                          ]),
                    ),
                    ],
                ),
              
                     
                       
                        
                    ],       
            ) : SizedBox() ,
// else blank
          ]
        ),
      ),
    ),
    );
  }
}