import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:post_app/registration/userScreen.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.rubikTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: UserScreen(),
    );
  }
}