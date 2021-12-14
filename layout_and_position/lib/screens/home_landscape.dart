import 'package:flutter/material.dart';
import 'package:layout_and_position/screens/home_card_widget.dart';

class HomeLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: HomeCardWidget("Health",Colors.indigoAccent, Icons.favorite),
              ),
              Expanded(
                child: HomeCardWidget("Natural",Colors.indigoAccent,Icons.face_retouching_natural),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: HomeCardWidget("Sleep", Colors.indigoAccent,Icons.alarm_add),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: HomeCardWidget("Home",Colors.indigoAccent,Icons.cabin_sharp),
              ),
              Expanded(
                child: HomeCardWidget("Play",Colors.indigoAccent,Icons.play_circle),
              )
            ],
          ),
        )
      ],
    );
  }
}