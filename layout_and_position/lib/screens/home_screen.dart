import 'package:flutter/material.dart';
import 'package:layout_and_position/screens/home_portrait.dart';
import 'package:layout_and_position/screens/home_landscape.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.portrait ? HomePortrait(): HomeLandscape(),
      appBar: AppBar(
        title: Text('First layout')
      ),
    );
  }
}