import 'package:flutter/material.dart';
import 'package:instant_notes/screens/add_note.dart';
import 'package:instant_notes/screens/reusable_card.dart';
class ViewNote extends StatefulWidget {
  static String id='view_note';
  @override
  _ViewNoteState createState() => _ViewNoteState();
}

class _ViewNoteState extends State<ViewNote> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("View Notes"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              Expanded(child: ResusableCard(
                colour: Colors.red,
                cardChild: 'Note 1',
              ),
              ),

              ],
            ),),

            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ResusableCard(
                  colour: Colors.red,
                  cardChild: 'Note 2',
                ),
                ),

              ],
            ),),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ResusableCard(
                  colour: Colors.red,
                  cardChild: 'Note 3',
                ),
                ),

              ],
            ),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddNote.id );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Add Notes',
                  ),
                ),
              ),
            ),
            // Expanded(child: FlatButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, AddNote.id);
            //   },
            //   child: Text(
            //     'Add Note'
            //
            //   ),
            // ),),
          ],
        ),
      ),

    );
  }
}