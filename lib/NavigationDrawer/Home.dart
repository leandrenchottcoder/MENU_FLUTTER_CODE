import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("leandrenchott7775@gmail.com"),
              accountName: Text("Leandre N'chott"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("../../assets/avatar1.jpeg"),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home), title: Text("Home"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Shop"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
                onTap: () {}),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(
                leading: Icon(Icons.label), title: Text("Green"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Red"), onTap: () {}),
            ListTile(
                leading: Icon(Icons.label), title: Text("Blue"), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
