import 'package:fitcash/presentation/home/widgets/intro_video.dart';
import 'package:fitcash/presentation/home/widgets/tag_scroll.dart';
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
          IntroVideo(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Divider(color: primaryBlack),
          ),
          Container(
            child: Column(
              children: [
                Row(children: [Text("Cycling for the Weekend")]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
