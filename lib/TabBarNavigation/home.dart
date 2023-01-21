import 'package:flutter/material.dart';
import 'package:menu/TabBarNavigation/chat.dart';
import 'package:menu/TabBarNavigation/dashBoard.dart';
import 'package:menu/TabBarNavigation/profile.dart';
import 'package:menu/TabBarNavigation/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    DashBoard(),
    Chat(),
    Profile(),
    Setting(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = DashBoard();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                          Text("Dashboard",
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      ),
                      minWidth: 40),
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.chat,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                          Text("Chat",
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      ),
                      minWidth: 40),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard,
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                          Text("Profile",
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      ),
                      minWidth: 40),
                  MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Setting();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                          Text("Setting",
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey)),
                        ],
                      ),
                      minWidth: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
