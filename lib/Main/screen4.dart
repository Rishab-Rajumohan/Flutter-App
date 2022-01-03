import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:intl/intl.dart';



class Screen4 extends StatefulWidget {
 
    //final String categoryId;
    //final String categoryTitle;

    //Screen1(this.categoryId,this.categoryTitle);
/*getUser1Data() async {
  var response = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<History> histories=[];

 for (var h1 in jsonData){
   History histpry = History(h1["Status"],h1["Duration"]);
 histories.add(histpry);
 }
}*/
 
  @override
  _Screen4State createState() => _Screen4State();


  void setState(Null Function() param0) {}
}
String valuechoose1;
String valuechoose2;
List leavecat = [
  'EL','SL','LOP'
];
class _Screen4State extends State<Screen4> {

   //DateTime _fromdate2;
  String _todate2 = 'Tap to select date';

  String _fromdate2 = 'Tap to select date';



@override
 void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    final routeArgs= ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
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
     body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(
             height: 350,
             
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
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    Text("            Leave Category :    ",
                      style: TextStyle(
                      fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                    DropdownButton(
                      hint: Text('Choose               '),
                     //icon: Icon(Icons.arrow_circle_down_rounded),
                      focusColor: Colors.black,
                      //iconSize: 20,
                      //iconEnabledColor: Colors.black,
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
                    child: Text(_fromdate2,textAlign: TextAlign.center,
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
                          _fromdate2 = new DateFormat.yMMMMd("en_US").format(date);
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
                    child: Text(_todate2,textAlign: TextAlign.center,
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
                          _todate2 = new DateFormat.yMMMMd("en_US").format(date);
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
                    Text("                            Status :    ",
                      style: TextStyle(
                      fontFamily: 'YOUR_FONT_FAMILY', fontWeight: FontWeight.bold)),
                      Text('Pending'),
                  ]),
                ),
                Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
              child: Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue[700], borderRadius: BorderRadius.circular(8)),
                child: FlatButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Fetch',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
              ]),
            ),

           
            Container(

              height: 450,
                
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
          padding: EdgeInsets.all(5),
              child: Center(  
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[  

                    Container(
                      child:Text(
                        '    History :',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'YOUR_FONT_FAMILY',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //backgroundColor: Colors.blue,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: DataTable(
                       headingRowColor:
        MaterialStateColor.resolveWith((states) => Colors.grey[300]),
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Date',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Leave Type',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'No. of Days',
                          ),
                        ),
                         DataColumn(
                          label: Text(
                            'End Date',
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Status',
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),
                            DataCell(Text('')),       
                            DataCell(Text('')),               
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                  ])  
              ),
    ),
         ],
       ),
     ),
      
    );
  }
}
class History {
  final String Status , Duration;
  History(this.Status,this.Duration);
}