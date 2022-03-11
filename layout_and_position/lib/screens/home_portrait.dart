import 'package:flutter/material.dart';
import 'home_card_widget.dart';

class HomePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
     children: <Widget>[
       Expanded(child: Row(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
          Expanded(
            child: HomeCardWidget("Health", Colors.red, Icons.favorite)),
          Expanded(
            child: HomeCardWidget("Natural", Colors.blue, Icons.face_retouching_natural))
         ],
       )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Card(
                  child: HomeCardWidget("Sleep",Colors.cyanAccent, Icons.alarm_add),
                ),
              ),
            ],
          ),
        ),
         Expanded(child: Row(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
          Expanded(
            child: HomeCardWidget("Food",Colors.green, Icons.fastfood_sharp)),
         
          Expanded(
            child: HomeCardWidget("Activity",Colors.orange, Icons.play_circle))
         ],
       )),
     ],
    );
  }
}