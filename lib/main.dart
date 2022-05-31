import 'package:css_px_converter/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF8FE3A9),
        brightness: Brightness.dark,

        fontFamily: GoogleFonts.montserrat().fontFamily
      ),
      home: const HomeScreen(),
    );
  }
}
