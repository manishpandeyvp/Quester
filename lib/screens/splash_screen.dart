import 'package:flutter/material.dart';
import 'package:quester/models/user/user.dart';
import 'package:quester/screens/splash_orig.dart';
import 'dashboard.dart';

class LoadingScreen extends StatefulWidget {
  final User user;
  LoadingScreen({this.user});
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      fileName: 'assets/RotatingEarth.flr',
      animation: 'Preview2',
      seconds: 2,
      loaderColor: Color(0xFFFF397F),
      navigateAfterSeconds: new DashBoard(user: widget.user,),
      backgroundColor: Color(0xFF09144B),
      loadingText: Text(
        'quester',
        style: TextStyle(
            fontSize: 20, fontFamily: 'MuseoModerno', color: Color(0xFFFF397F)),
      ),
    );
  }
}
