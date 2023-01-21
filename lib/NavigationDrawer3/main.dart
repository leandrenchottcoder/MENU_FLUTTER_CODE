import 'package:flutter/material.dart';
import 'package:menu/NavigationDrawer3/contacts.dart';
import 'package:menu/NavigationDrawer3/dashboard.dart';
import 'package:menu/NavigationDrawer3/events.dart';
import 'package:menu/NavigationDrawer3/my_drawer_header.dart';
import 'package:menu/NavigationDrawer3/notes.dart';
import 'package:menu/NavigationDrawer3/notifications.dart';
import 'package:menu/NavigationDrawer3/privacy_policy.dart';
import 'package:menu/NavigationDrawer3/send_feedback.dart';
import 'package:menu/NavigationDrawer3/settings.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashBoardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = Contats();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_polycy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Leandre N'chott"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          menuItems(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItems(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItems(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItems(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItems(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItems(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItems(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_polycy ? true : false),
          // menuItems(8, "Send feddback", Icons.feedback_outlined,
          //     currentPage == DrawerSections.send_feedback ? true : false),
          menuItems(8, "Send Feeback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItems(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
          setState(() {
            if (id == 1) {
              currentPage == DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage == DrawerSections.contacts;
            } else if (id == 3) {
              currentPage == DrawerSections.events;
            } else if (id == 4) {
              currentPage == DrawerSections.notes;
            } else if (id == 5) {
              currentPage == DrawerSections.settings;
            } else if (id == 6) {
              currentPage == DrawerSections.notifications;
            } else if (id == 7) {
              currentPage == DrawerSections.privacy_polycy;
            } else if (id == 8) {
              currentPage == DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(icon, size: 20.0, color: Colors.black),
              ),
              Expanded(
                flex: 3,
                child: Text(title,
                    style: TextStyle(color: Colors.black, fontSize: 16.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_polycy,
  send_feedback,
}
