import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "# Les recettes",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset('../../assets/avatar2.jpg'),
                  ),
                  Text("Le nom de l'utilisateur"),
                  Text("Email@gmail.com"),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("# Les recettes",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              tileColor: Colors.green,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("Acceuil"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.favorite),
              title: Text("Mes favories"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.local_pizza),
              title: Text("Les nouveautés"),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.local_cafe),
              title: Text("Boissons"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.restaurant),
              title: Text("Les Plats"),
            ),
          ],
        ),
      ),
    );
  }
}
