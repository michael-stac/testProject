import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/Utils/router.dart';

import '../../../Style/colors.dart';
import '../../../Widgets/custom_buttom.dart';
import '../../../Widgets/tags.dart';
import '../../Tags/tag.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leadingWidth: 120,
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19.54),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                    image: AssetImage("assets/images/backarrow.png")),
              ),
              const SizedBox(
                width: 7.54,
              ),
              Text(
                'Back',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.deepblack),
              ),
            ],
          ),
        ),
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.inter(
              fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.black),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            //New
                            blurRadius: 5.0,
                            color: AppColor.graylite,
                          )
                        ],
                        border: Border.all(color: AppColor.graylite, width: 3)),
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage("assets/images/profile.png")),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Samuel Joseph",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: AppColor.black,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/images/me.png")),
                      const SizedBox(
                        width: 9.57,
                      ),
                      Text(
                        "Personal Info",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.deepblack,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            //New
                            blurRadius: 5.0,
                            color: AppColor.graylite,
                          )
                        ],
                        color: AppColor.aliceBlue,
                        borderRadius: BorderRadius.circular(4)),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Email Address:",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            ),
                            Text(
                              "samueljoseph@gmail.com",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.blue.shade200,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone Number:",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            ),
                            Text(
                              "0123456789",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      const Image(
                          image: AssetImage("assets/images/points.png")),
                      const SizedBox(
                        width: 9.57,
                      ),
                      Text(
                        "Tasks and Points",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.deepblack,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            //New
                            blurRadius: 5.0,
                            color: AppColor.graylite,
                          )
                        ],
                        color: AppColor.aliceBlue,
                        borderRadius: BorderRadius.circular(4)),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tasks Completed:",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            ),
                            Text(
                              "52",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.blue.shade200,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Accumulated Points (Worth):",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter'),
                            ),
                            Text(
                              "50,283",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Tags",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColor.deepblack,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                          Taps(context,
                              onTap: () {
                                nextPage(context, page: const Tags());
                              },
                              text: 'Tag One',
                              textColor: AppColor.blue),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 56,
                  ),
                  customButton(context,
                      text: 'Disconnect',
                      onTap: () {},
                      textColor: AppColor.red,
                      bgColor: AppColor.primaryColor)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
