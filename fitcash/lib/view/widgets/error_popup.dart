import 'package:flutter/material.dart';

errorDialog({
  required BuildContext context,
  String? title,
  String? content,
  List<Widget>? actionList,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title ?? 'Error Here'),
        content: Text(content ?? 'Error Here'),
        actions: actionList ??
            [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Ok'),
              ),
            ],
      );
    },
  );
}
