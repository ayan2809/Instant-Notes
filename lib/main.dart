import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instant_notes/screens/add_note.dart';
import 'package:instant_notes/screens/login_screen.dart';
import 'package:instant_notes/screens/registration_screen.dart';
import 'package:instant_notes/screens/view_note.dart';
import 'package:instant_notes/screens/welcome_screen.dart';

import 'screens/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InstantNotes());
}

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
      initialRoute: WelcomeScreen.id,
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