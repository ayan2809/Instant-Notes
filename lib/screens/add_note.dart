import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instant_notes/constants.dart';
import 'package:instant_notes/screens/view_note.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddNote extends StatefulWidget {
  static String id = 'add-note';
  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) loggedInUser = user;
    } catch (e) {
      print(e);
    }
  }

  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Add Notes",
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: kTextFieldStyle,
                  onChanged: (value) {
                    print(value);
                    title = value;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: kTextFieldStyle2,
                  onChanged: (value) {
                    print(value);
                    description = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      print(title);
                      print(description);
                      _firestore
                          .collection('notes')
                          .add({'description': description,'title': title });
                      //Navigator.pushNamed(context, ViewNote.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Add Note',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
