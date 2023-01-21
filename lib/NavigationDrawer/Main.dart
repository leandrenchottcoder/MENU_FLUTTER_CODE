import 'package:flutter/material.dart';
import 'package:menu/NavigationDrawer/Home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
