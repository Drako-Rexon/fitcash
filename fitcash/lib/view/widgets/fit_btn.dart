import 'package:fitcash/utils/colors.dart';
import 'package:flutter/material.dart';

class FitButton extends StatelessWidget {
  const FitButton({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
                  backgroundColor: MaterialStateProperty.all(fGreen)),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(color: fBlack, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
