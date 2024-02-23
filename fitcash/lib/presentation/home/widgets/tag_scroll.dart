import 'package:fitcash/utils/colors.dart';
import 'package:fitcash/utils/string.dart';
import 'package:flutter/material.dart';

class TagsScroll extends StatelessWidget {
  const TagsScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext ctx, int ind) {
                  return Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: fGrey,
                        borderRadius: const BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(runningIcon)),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Hello",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
