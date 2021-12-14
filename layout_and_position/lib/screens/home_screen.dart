import 'package:flutter/material.dart';
import 'package:layout_and_position/screens/home_portrait.dart';
import 'package:layout_and_position/screens/home_landscape.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? HomePortrait()
          : HomeLandscape(),
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('I\'m Doctor'.toUpperCase()),
            Icon(Icons.health_and_safety, color: Colors.white, size: 45.0),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
