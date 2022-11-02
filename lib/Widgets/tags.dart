import 'package:flutter/material.dart';

import '../Style/colors.dart';

Widget Taps(BuildContext context,
    {required VoidCallback onTap,
      required String text,
      Color? textColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration
          (
          border: Border.all(color: AppColor.blue, width: 1),

            borderRadius: BorderRadius.circular(100)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              color: textColor ?? AppColor.primaryColor, fontFamily: ''),
        )
    ),
  );
}