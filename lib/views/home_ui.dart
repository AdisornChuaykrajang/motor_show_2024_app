// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/subview2/cal.dart';
import 'package:motor_show_2024_app/views/subview2/honda.dart';
import 'package:motor_show_2024_app/views/subview2/mazda.dart';
import 'package:motor_show_2024_app/views/subview2/mitsubishi.dart';
import 'package:motor_show_2024_app/views/subview2/toyota.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> _showView = [
    Toyota(),
    Honda(),
    Cal(),
    Mitsubishi(),
    Mazda(),
  ];

  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showView[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
    border: Border(
      top: BorderSide(width: 1.0, color: Colors.grey),
    ),
  ),

        child: SalomonBottomBar(
          
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: Image.asset(
                  'assets/images/toyota_logo.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.width * 0.07,
                  fit: BoxFit.cover,
                ),
                activeIcon: Image.asset(
                  'assets/images/toyota_logo.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.cover,
                ),
                title: Text(''),
                selectedColor: Colors.black,
                unselectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: Image.asset(
                  'assets/images/honda_logo.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.width * 0.07,
                  fit: BoxFit.cover,
                ),
                activeIcon: Image.asset(
                  'assets/images/honda_logo.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.cover,
                ),
                title: Text(''),
                selectedColor: Colors.black,
                unselectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: Image.asset(
                  'assets/images/cal_icon.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.width * 0.07,
                  fit: BoxFit.cover,
                ),
                activeIcon: Image.asset(
                  'assets/images/cal_icon.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.cover,
                ),
                title: Text(''),
                selectedColor: Colors.black,
                unselectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: Image.asset(
                  'assets/images/mitsubishi_logo.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.width * 0.07,
                  fit: BoxFit.cover,
                ),
                activeIcon: Image.asset(
                  'assets/images/mitsubishi_logo.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.cover,
                ),
                title: Text(''),
                selectedColor: Colors.black,
                unselectedColor: Colors.grey),
            SalomonBottomBarItem(
                icon: Image.asset(
                  'assets/images/mazda_logo.png',
                  width: MediaQuery.of(context).size.width * 0.07,
                  height: MediaQuery.of(context).size.width * 0.07,
                  fit: BoxFit.cover,
                ),
                activeIcon: Image.asset(
                  'assets/images/mazda_logo.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  fit: BoxFit.cover,
                ),
                title: Text(''),
                selectedColor: Colors.black,
                unselectedColor: Colors.grey),
          ],
        ),
      ),
    );
  }
}
