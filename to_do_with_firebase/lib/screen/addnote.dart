import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Addnote extends StatefulWidget {
  @override
  _AddnoteState createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  String taskname, taskdetails, taskDate, taskTime;

  getTaskName(taskname) {
    this.taskname = taskname;
  }

  getTaskDetails(taskdetails) {
    this.taskdetails = taskdetails;
  }

  getTaskDate(taskDate) {
    this.taskDate = taskDate;
  }

  getTaskTime(taskTime) {
    this.taskTime = taskname;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Add Note"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                onChanged: (String name) {
                  getTaskName(name);
                },
                decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onChanged: (String taskdetails) {
                  getTaskDetails(taskdetails);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onChanged: (String taskdate) {
                  getTaskDate(taskdate);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Time",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onChanged: (String tasktime) {
                  getTaskTime(tasktime);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    color: Color(0xFFFA7397),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Color(0xFFFDDE42)),
                    )),
                RaisedButton(
                    color: Color(0xFFFA7397),
                    onPressed: () {
                      createData();
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Color(0xFFFDDE42)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
// _sendToServer(){
//   if (_key.currentState.validate()){
//     _key.currentState.save();
//     DatabaseReference ref = FirebaseDatabase.instance.reference();
//     var data = {
//       "title" = title,
//       "details":details,
//     };
//     ref.child("message").child(title).set(data).then((v){
//       _key.currentState.reset();
//     });

//   }else {
//     setState(() {
//      _autoValidate = true;
//     });
//   }
// }
  createData() {
    DocumentReference ds =
        Firestore.instance.collection('todolist').document(taskname);
    Map<String, dynamic> tasks = {
      "taskname": taskname,
      "taskdetails": taskdetails,
      "taskdate": taskDate,
      "tasktime": taskTime,
    };

    ds.setData(tasks).whenComplete(() {
      print("task updated");
    });
  }
}
