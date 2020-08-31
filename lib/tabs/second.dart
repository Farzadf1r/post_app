import 'package:flutter/material.dart';
import 'package:post_app/form.dart';


class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding with Curry',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: FormScreen()
    );
  }
}
