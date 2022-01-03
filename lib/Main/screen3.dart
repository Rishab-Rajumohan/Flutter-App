import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';



class Screen3 extends StatefulWidget {
 
    //final String categoryId;
    //final String categoryTitle;

    //Screen1(this.categoryId,this.categoryTitle);

  @override
  
  _Screen3State createState() => _Screen3State();
}
String valuechoose1;
String valuechoose2;
List leavecat = [
  'EL','SL','LOP'
];
List leavetype =[
  'Half Day', 'Full Day'
];

class _Screen3State extends State<Screen3> {
    
  String _todate3 = 'Tap to select date';

  String _fromdate3 = 'Tap to select date';
  
  int diff;

  DateTime frm;

  DateTime to;

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}
@override
 void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    final routeArgs= ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          elevation: 0,
          title: Text(categoryTitle,
              style: TextStyle(
                  fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         
         Container(
            height: 400,
                    margin: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                    decoration: new BoxDecoration(
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
            padding: EdgeInsets.all(10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                   margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("             From Date :    ",
                      style: TextStyle(
                      fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                  InkWell(
                    child: Text(_fromdate3,textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF000000))
                          ),),
                   IconButton(
                      icon: Icon(Icons.calendar_today),
                      tooltip: 'Tap to open date picker',
                    onPressed: () {
                      showDatePicker(
                        
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2022)
                      ).then((date) {
                        setState(() {
                          _fromdate3 = new DateFormat.yMMMMd("en_US").format(date);
                        });
                      });
                    },
                  ),
                  ]),
                ),



              Container(
                   margin: EdgeInsets.symmetric(horizontal: 25),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("                  To Date :    ",
                      style: TextStyle(
                      fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                  InkWell(
                    child: Text(_todate3,textAlign: TextAlign.center,
                          style: TextStyle(color: Color(0xFF000000))
                          ),),
                   IconButton(
                      icon: Icon(Icons.calendar_today),
                      tooltip: 'Tap to open date picker',
                    onPressed: () {
                      showDatePicker(
                        
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2022)
                      ).then((date) {
                        setState(() {
                          _todate3 = new DateFormat.yMMMMd("en_US").format(date);
                          
                        });
                      });
                      
                    },
                  ),
                  ]),
                ),
                
              
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Text("            Leave Category :    ",
                    style: TextStyle(
                    fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                  DropdownButton(
                    hint: Text('Choose                 '),
                    //icon: Icon(Icons.arrow_circle_down_rounded),
                    focusColor: Colors.black,
                    //iconSize: 20,
                   // iconEnabledColor: Colors.black,
                    dropdownColor: Colors.white,
                    value: valuechoose1,
                    onChanged:(newValue){
                      setState(() {
                             valuechoose1 = newValue;              
                                        });
                    } ,
                    items: leavecat.map((valueitem){
                      return DropdownMenuItem(value: valueitem,
                      child: Text(valueitem),
                      );
                    }).toList() ,
                  )
                ]),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Text("                   Leave Type :    ",
                    style: TextStyle(
                    fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                  DropdownButton(
                    
                    hint: Text('Choose                 '),
                   // icon: Icon(Icons.arrow_circle_down_rounded),
                    focusColor: Colors.black,
                   // iconSize: 20,
                   // iconEnabledColor: Colors.black,
                    dropdownColor: Colors.white,
                    value: valuechoose2,
                    onChanged:(newValue){
                      setState(() {
                             valuechoose2 = newValue;              
                                        });
                    } ,
                    items: leavetype.map((valueitem){
                      return DropdownMenuItem(value: valueitem,
                      child: Text(valueitem),
                      );
                    }).toList() ,
                  )
                ]),
              ),


              

              /*Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                  Text("          Total Days           :        ",
                    style: TextStyle(
                    fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                    Text(''),
                ]),
              ),*/
              Container(
                
                color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text("                         Reason :",
                      style: TextStyle(
                      fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                   Padding(
                     padding: EdgeInsets.fromLTRB(83.0, 2.0, 38.0, 4.0),
                     child: TextField(
                              decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Reason',
                                ),
                         ),
                   ),
                  ]),
                ),
                )
            ]),
          ),
           Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue[700], borderRadius: BorderRadius.circular(12)),
                child: FlatButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
       ],
     ),

    );
  }
}
