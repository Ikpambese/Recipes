import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipetask/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomScreen(),
    );
  }
}
