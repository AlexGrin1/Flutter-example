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
                child: HomeCardWidget("Card 1"),
              ),
              Expanded(
                child: HomeCardWidget("Card 2"),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: HomeCardWidget("Card 3"),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: HomeCardWidget("Card 4"),
              ),
              Expanded(
                child: HomeCardWidget("Card 5"),
              )
            ],
          ),
        )
      ],
    );
  }
}