import 'package:ready_doctor_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ready_doctor_app/constants.dart';

void main() {runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Healthcare - Doctor Consultation App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(padding: EdgeInsets.all(defaultPadding),
          ),
        )
      ),
      home: WelcomeScreen()
    );
  }
}
