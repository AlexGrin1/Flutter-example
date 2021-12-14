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
            child: HomeCardWidget("Card 1")),
          Expanded(
            child: HomeCardWidget("Card 2"))
         ],
       )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Card(
                  child: HomeCardWidget("Card 3"),
                ),
              ),
            ],
          ),
        ),
         Expanded(child: Row(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
          Expanded(
            child: HomeCardWidget("Card 4")),
          Expanded(
            child: HomeCardWidget("Card 5"))
         ],
       )),
     ],
    );
  }
}