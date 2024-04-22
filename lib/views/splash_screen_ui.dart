// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/introduction_screen_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

@override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3
      ),
      ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context)=> IntroductioScreenUI())),

    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'Moto Show 2024',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'THE MOBILITY OF TOYFUL EXPRERIENCES',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.018,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            CircularProgressIndicator(
              color: Colors.grey[800],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Text(
              'Created By 6552410001',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              'DTI SAU 2024',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
