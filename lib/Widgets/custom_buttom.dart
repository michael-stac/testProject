import 'package:flutter/material.dart';

import '../Style/colors.dart';


Widget customButton(BuildContext context,
    {required VoidCallback onTap,
      required String text,
      Color? bgColor,
      Color? textColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: bgColor ?? AppColor.white,
            borderRadius: BorderRadius.circular(4)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              color: textColor ?? AppColor.primaryColor, fontFamily: ''),
        )
    ),
  );
}
