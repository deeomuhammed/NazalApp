import 'package:flutter/material.dart';

snack(
    {required String text,
    required BuildContext context,
    required IconData data,
    required Color color}) {
  var snackbar = SnackBar(
      margin: const EdgeInsets.all(20),
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      content: Row(
        children: [
          Icon(
            data,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

///checking is number?
bool isNumeric(String result) {
  if (result.length != 10) {
    return false;
  }
  return int.tryParse(result) != null;
}
