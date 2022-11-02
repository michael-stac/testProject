import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Style/colors.dart';

class Tags extends StatefulWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leadingWidth: 120,
        backgroundColor: AppColor.white,
        leading:  GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
              image: AssetImage("assets/images/backarrow.png")),
        ),
        centerTitle: true,
        title: Text(
          'Tags',
          style: GoogleFonts.inter(
              fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.black),
        ),
      ),
      body: Center(child: Text("Welcome to Tage", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, color: AppColor.black),),)
    );
  }
}
