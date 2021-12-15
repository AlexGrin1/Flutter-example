import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key:key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        SvgPicture.asset("./assets/icons/splash_bg.svg"),
        SafeArea(
          child: Column(
            children: [
              SvgPicture.asset('./assets/icons/gerda_logo.svg')
            ],
          ),
          ),
        ],
      ),
    );
  }
}