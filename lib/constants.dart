import 'package:flutter/material.dart';
const kTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.title,
    color: Colors.white,
  ),
  hintText: 'Enter the Title of your Note',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);
const kTextFieldStyle2 = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.description,
    color: Colors.white,
  ),
  hintText: 'Enter the Description of your Note',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
);
