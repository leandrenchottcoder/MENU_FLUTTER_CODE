import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MenuDashboard()));
}

class MenuDashboard extends StatefulWidget {
  const MenuDashboard({super.key});

  @override
  State<MenuDashboard> createState() => _MenuDashboardState();
}

class _MenuDashboardState extends State<MenuDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text("MENU SCOLAIRE"),
        backgroundColor: Colors.green[700],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("LEANDRE N'CHOTT",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
              accountEmail: Text("leandre7775@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('../../assets/avatar1.jpeg'),
              ),
              decoration: BoxDecoration(
                color: Colors.green[700],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Mot de passe"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Information"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Quitter"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MyMenu(
                title: "ACADEMIC",
                icon: Icons.account_balance,
                color: Colors.brown),
            MyMenu(
                title: "INFORMATION",
                icon: Icons.info_outline,
                color: Colors.brown),
            MyMenu(title: "ECOLE", icon: Icons.school, color: Colors.orange),
            MyMenu(
                title: "DOSSIER",
                icon: Icons.person_pin,
                color: Colors.blueGrey),
            MyMenu(
                title: "APPRENTISSAGE",
                icon: Icons.local_library,
                color: Colors.red),
            MyMenu(
                title: "DOCUMENT",
                icon: Icons.library_books,
                color: Colors.teal),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor color;

  MyMenu(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 70.0,
                color: color,
              ),
              Text(title, style: TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
