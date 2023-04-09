import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_navigation/pages/add/add_page.dart';

import 'package:getx_bottom_navigation/navigation/custom_animated_bottom_bar.dart';
import 'package:getx_bottom_navigation/pages/dashboard/dashboard_controller.dart';
import 'package:getx_bottom_navigation/pages/home/home_page.dart';
import 'package:getx_bottom_navigation/pages/messages/messages_page.dart';
import 'package:getx_bottom_navigation/pages/users/users_page.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({super.key});

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {

  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                const HomePage(),
                UsersPage(),
                const MessagesPage(),
                const AddPage(),
              ],
            ),
          ),
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Colors.white,
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            // The index is passed automatically, no need to pass it
            onItemSelected: controller.changeTabIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: const Icon(Icons.apps),
                title: const Text('Home'),
                activeColor: Colors.green,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.people),
                title: const Text('Users'),
                activeColor: Colors.purpleAccent,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.message),
                title: const Text(
                  'Messages ',
                ),
                activeColor: Colors.pink,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Settings'),
                activeColor: Colors.blue,
                inactiveColor: _inactiveColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
