import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ui_components_practice/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: NavbarDesign(),
    );
  }
}
