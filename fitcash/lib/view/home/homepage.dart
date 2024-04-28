import 'package:fitcash/view/widgets/fit_btn.dart';
import 'package:fitcash/view/widgets/tag_scroll.dart';
import 'package:fitcash/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fBlack,
      ),
      backgroundColor: fBlack,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TagsScroll(),
          // IntroVideo(),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          //   child: Divider(color: primaryBlack),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Container(
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      "Cycling for the Weekend",
                      style: TextStyle(
                        color: fWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
          FitButton(text: 'Try It Free')
        ],
      ),
    );
  }
}
