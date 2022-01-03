import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'background.dart';

class Screen1 extends StatefulWidget {
  //final String categoryId;
  //final String categoryTitle;

  //Screen1(this.categoryId,this.categoryTitle);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  DateTime _fromdate;
  DateTime _todate;
  bool _showData = false;
  bool _showData1 = false;
  bool _showData2 = false;
/*getBasicInfo() async {
  var response11 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<BasicInfo> users1=[];

 for (var u1 in jsonData){
   BasicInfo user1 = BasicInfo(u1["empid"],u1["dob"],u1["bloodGroup"],u1["maritalStatus"],u1["empStatus"],
  );
 users1.add(user1);
 }
}



getEmployeeInfo() async {
  var response12 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<EmployeeInfo> users2=[];

 for (var u2 in jsonData){
   EmployeeInfo user2 = EmployeeInfo(u2["repManager"],u2["position"],u2["grade"],u2["totalExperience"],
   );
 users2.add(user2);
 }
}


getContactInfo() async {
  var response13 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<ContactInfo> users3=[];

 for (var u3 in jsonData){
   ContactInfo user3 = ContactInfo(u3["addr1"],u3["addr2"],
  );
 users3.add(user3);
 }
}
getCertification() async {
  var response14 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<Certification> users4=[];

 for (var u4 in jsonData){
   Certification user4 = Certification(u4["trainingType"],u4["trainingOrg"],u4["trainingFrom"],u4["trainingTo"],u4["status"]
  );
 users4.add(user4);
 }
}*/

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: GestureDetector(
                      onTap: () {
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
                                  ])))),
                ),
                _showData
                    ? Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: new BorderRadius.circular(10.0),
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
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                         Employee ID :    ",
                                          style: TextStyle(
                                              fontFamily: 'YOUR_FONT_FAMILY      ',
                                              fontWeight: FontWeight.bold)),
                                      Text("Output",
                                          style: TextStyle(
                                              fontFamily: '          YOUR_FONT_FAMILY               ',
                                              fontWeight: FontWeight.bold)),
                                    ]),
                              ),
                              Container(
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                        Date of Birth :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                         Blood Group :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                      Marital Status :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                 Employee Status :    ",
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
                          ),
                        ),
                      )
                    : SizedBox(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: GestureDetector(
                      onTap: () {
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
                                  ])))),
                ),
                _showData1
                    ? Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: new BorderRadius.circular(10.0),
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
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "            Reporting Manager :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                                Position :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                                    Grade :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                           Experience :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                  Past Experience :    ",
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
                                color: Colors.white10,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          "                 Total Experience :    ",
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
                          ),
                        ),
                      )
                    : SizedBox(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                  child: GestureDetector(
                      onTap: () {
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
                                    Text(
                                      '  Contact Information :',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'YOUR_FONT_FAMILY',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        //backgroundColor: Colors.blue,
                                        //decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ])))),
                ),
                _showData2
                    ? Container(
                      height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: new BorderRadius.circular(10.0),
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
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
                                    '   Contact Details :',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold,
                                      //decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  //),

                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 15),
                                    color: Colors.white10,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(" Primary address         :",
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
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 15),
                                    color: Colors.white10,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(" Secondary address     :",
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
                          ),
                      ),
                    )
                    : SizedBox(),

                /* Container(
                 height: 350,
                  
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Card(
                      // color: Colors.blue,
                      Text(
                        '   Certifaction:',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'YOUR_FONT_FAMILY',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //),
                      Container(
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("           Training Type           :      ",
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
                              Text("           Training DSE             :      ",
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
                              Text("            Status                        :      ",
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
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                             
                              RaisedButton(
                                
                                child: Text('From Date'),
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2001),
                                          lastDate: DateTime(2022))
                                      .then((date) {
                                    setState(() {
                                      _fromdate = date;
                                    });
                                  });
                                },
                                
                              ),
                              Text('         :      $_fromdate',
                              style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                        color: Colors.white,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              
                              RaisedButton(
                                
                                child: Text('To Date     '),
                                onPressed: () {
                                  showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2001),
                                          lastDate: DateTime(2022))
                                      .then((date) {
                                    setState(() {
                                      _todate = date;
                                    });
                                  });
                                },
                              ),
                              Text('         :      $_todate',
                              style: TextStyle(
                                      fontFamily: 'YOUR_FONT_FAMILY',
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*class BasicInfo {
  final String empid,dob,bloodGroup,maritalStatus,empStatus;
  BasicInfo(this.empid,this.dob,this.bloodGroup,this.maritalStatus,this.empStatus);
}
class EmployeeInfo{
  final String repManager,position,grade,totalExperience;
  EmployeeInfo(this.repManager,this.position,this.grade,this.totalExperience);
}
class ContactInfo{
  final addr1,addr2;
  ContactInfo(this.addr1,this.addr2);
}
class Certification{
  final trainingType,trainingOrg,trainingFrom,trainingTo,status;
  Certification(this.trainingType,this.trainingOrg,this.trainingFrom,this.trainingTo,this.status);
;
}*/

  