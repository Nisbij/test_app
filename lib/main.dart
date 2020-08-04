import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './profile.dart';
// import './add_notes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[400]), home: Notes());
  }
}


// class create_notes extends StatefulWidget{

//   Widget build(BuildContext context) {
//     return Container(
//         child: TextBox(text)
//     )

//   }
// }
