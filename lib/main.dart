import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipetask/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:recipetask/services/loginservice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => LoginService(),
      child: MaterialApp(
        title: 'Recipe',
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: WelcomScreen(),
      ),
    );
  }
}
