import 'dart:developer';

import 'package:fitcash/presentation/analytics/analytics.dart';
import 'package:fitcash/presentation/explore/explore.dart';
import 'package:fitcash/presentation/home/homepage.dart';
import 'package:fitcash/presentation/profile/profile.dart';
import 'package:fitcash/utils/colors.dart';
import 'package:flutter/material.dart';

class RedirectingPage extends StatefulWidget {
  const RedirectingPage({super.key});

  @override
  State<RedirectingPage> createState() => _RedirectingPageState();
}

class _RedirectingPageState extends State<RedirectingPage> {
  final List<Widget> _pages = const [
    HomePage(),
    Explore(),
    Analytics(),
    Profile(),
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    log(_currentPage.toString());
    return Scaffold(
      backgroundColor: fBlack,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(fontSize: 10),
        backgroundColor: primaryBlack,
        selectedItemColor: fGreen,
        unselectedItemColor: fGrey,
        currentIndex: _currentPage,
        unselectedLabelStyle: const TextStyle(color: Colors.teal),
        type: BottomNavigationBarType.fixed,
        onTap: (ind) {
          setState(() {
            _currentPage = ind;
          });
        },
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Analytics"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: "Profile")
        ],
      ),
      body: _pages[_currentPage],
    );
  }
}
