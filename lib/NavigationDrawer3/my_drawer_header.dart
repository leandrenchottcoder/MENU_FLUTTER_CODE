import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('../../assets/avatar2.jpg')),
            ),
          ),
          Text("Leandre N'chott",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Text("leandrenchott7775@gmail.com",
              style: TextStyle(color: Colors.grey[200], fontSize: 14.0)),
        ],
      ),
    );
  }
}
