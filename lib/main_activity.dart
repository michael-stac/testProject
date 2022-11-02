import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/bottom_nav_provider.dart';
import 'Screens/BottomNavPages/Content/content.dart';
import 'Screens/BottomNavPages/Message/message.dart';
import 'Screens/BottomNavPages/Task/task.dart';
import 'Style/colors.dart';



class MainActivityPage extends StatefulWidget {
  const MainActivityPage({Key? key}) : super(key: key);

  @override
  State<MainActivityPage> createState() => _MainActivityPageState();
}

class _MainActivityPageState extends State<MainActivityPage> {
  ///bottom nav items
  List<Map>? bottomNavItems = [
    {'title': 'Message', 'icon': 'assets/images/message.png'},
    {'title': "Content", 'icon': 'assets/images/content.png'},
    {'title': "Task", 'icon': 'assets/images/task.png'},

  ];

  ///bottom nav pages
  List<Widget> bottomNavPages = [
    const MessagePage(),
    const ContentPage(),
    const TaskPage(),

  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<ModelProviders>(builder: (context, counter, child) {

      return Scaffold(
        body: bottomNavPages[counter.bottomCounter],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          margin: const EdgeInsets.all(15),
          child: BottomNavigationBar(
              elevation: 0,
              selectedLabelStyle: TextStyle(),
              selectedItemColor: AppColor.black,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap: (value) {
                counter.changeCounter(value);
              },
              currentIndex: counter.bottomCounter,
              items: List.generate(bottomNavItems!.length, (index) {
                final data = bottomNavItems![index];

                return BottomNavigationBarItem(
                    tooltip: data['title'],
                    icon: Image.asset(
                      data['icon'],
                      width: 20,
                      color: counter.bottomCounter == index
                          ? AppColor.black
                          : AppColor.gray,
                    ),
                    label: data['title']);
              })),
        ),
      );
    });
  }
}


