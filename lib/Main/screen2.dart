import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'background.dart';

class Screen2 extends StatefulWidget {
  //final String categoryId;
  //final String categoryTitle;

  //Screen1(this.categoryId,this.categoryTitle);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  /*getEldata() async {
  var response21 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<LeaveBalEl> leaves1=[];

 for (var l1 in jsonData){
   LeaveBalEl leave1 = LeaveBalEl(l1["leaveBal"],l1["leaveAcquired"],l1["leaveTaken"],l1["leaveApplied"],l1["leaveBalance"],
   );
 leaves1.add(leave1);
 }
}

getSldata() async {
  var response21 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<LeaveBalSl> leaves2=[];

 for (var l2 in jsonData){
   LeaveBalSl leave2 = LeaveBalSl(l2["leaveBal"],l2["leaveAcquired"],l2["leaveTaken"],l2["leaveApplied"],l2["leaveBalance"],
   );
 leaves2.add(leave2);
 }
}

getLopdata() async {
  var response21 = 
  await http.get(Uri.https(authority,unencodedpath));
 var jsonData = jsonDecode(reponse.body);
 List<LeaveBalLOP> leaves3=[];

 for (var l3 in jsonData){
   LeaveBalLOP leave3 = LeaveBalLOP(l3["leaveBal"],l3["leaveAcquired"],l3["leaveTaken"],l3["leaveApplied"],l3["leaveBalance"],
   );
 leaves3.add(leave3);
 }
}
*/

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
        backgroundColor: Colors.blue.shade700,
      ),
      body: Container(
        height: 450,
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
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
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                child: Text(
                  '    Leave Days :',
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
                child: DataTable(
                  headingRowColor:
        MaterialStateColor.resolveWith((states) => Colors.grey[300]),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Data',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'SL',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'EL',
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'LOP',
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Opening Balance',style: TextStyle(fontSize: 12))),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Leave Acquired',style: TextStyle(fontSize: 12))),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Leave Taken  ',style: TextStyle(fontSize: 12))),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Leave Applied ',style: TextStyle(fontSize: 12))),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Closing Balance',style: TextStyle(fontSize: 12))),
                        DataCell(Text('')),
                        DataCell(Text('')),
                        DataCell(Text('')),                      
                      ],
                    ),
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
/*class LeaveBalEl {
  final String leaveBal,leaveAcquired,leaveTaken,leaveApplied,leaveBalance;
  LeaveBalEl(this.leaveBal,this.leaveAcquired,this.leaveTaken,this.leaveApplied,this.leaveBalance
  );
}
class LeaveBalSl {
  final String leaveBal,leaveAcquired,leaveTaken,leaveApplied,leaveBalance;
  LeaveBalSl(this.leaveBal,this.leaveAcquired,this.leaveTaken,this.leaveApplied,this.leaveBalance
  );
}
class LeaveBalLOP {
  final String leaveBal,leaveAcquired,leaveTaken,leaveApplied,leaveBalance;
  LeaveBalLOP(this.leaveBal,this.leaveAcquired,this.leaveTaken,this.leaveApplied,this.leaveBalance
  );
}*/