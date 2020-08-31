import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserScreen extends StatefulWidget {

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }
  void _checkIfLoggedIn() async{
    // check if token is there
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if(token!= null){
      setState(() {
        _isLoggedIn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _isLoggedIn ? Home() :  LogIn(),
      ),

    );
  }
}