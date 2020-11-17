import 'package:flutter/material.dart';
import 'package:instant_notes/screens/add_note.dart';
import 'package:instant_notes/screens/login_screen.dart';
import 'package:instant_notes/screens/registration_screen.dart';
import 'package:instant_notes/screens/view_note.dart';
import 'package:instant_notes/screens/welcome_screen.dart';

void main() => runApp(InstantNotes());

class InstantNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: ViewNote.id,
      routes: {
        WelcomeScreen.id: (context )=> WelcomeScreen(),
        LoginScreen.id:(context)=> LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ViewNote.id:(context)=>ViewNote(),
        AddNote.id:(context)=>AddNote(),

      },
    );
  }
}