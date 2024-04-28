import 'package:fitcash/utils/assets.dart';
import 'package:fitcash/view/analytics/analytics.dart';
import 'package:fitcash/view/expense/expense_page.dart';
import 'package:fitcash/view/explore/explore.dart';
import 'package:fitcash/view/home/homepage.dart';
import 'package:fitcash/view/profile/profile.dart';
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
    Expense(),
    Analytics(),
    Profile(),
  ];
  final List<String> icons = [
    Ficons.summaryIcon,
    Ficons.fitnessIcon,
    Ficons.sharingIcon,
  ];
  final List<String> activeIcons = [
    Ficons.summaryIconActive,
    Ficons.fitnessIconActive,
    Ficons.sharingIconActive,
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: fBlack,
      body: Stack(
        children: [
          _pages[_currentPage],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Fcolors.fBlack,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(icons.length, (index) {
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            _currentPage == index
                                ? activeIcons[index]
                                : icons[index],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
