import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// my widgets
import 'package:ecommerce_mobile_app/screens/nav_bar_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: const BottomNavBar(),
    );
  
}