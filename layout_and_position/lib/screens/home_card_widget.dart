import 'dart:html';

import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final String cardText;
  final dynamic colorCard;
  final dynamic iconCard;
  const HomeCardWidget(this.cardText, this.colorCard, this.iconCard);

  @override
  Widget build(BuildContext context) {
    return InkWell( 
       onTap: () {},
      child: Card(
        color: colorCard,
        child: Container(
          margin: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(cardText, style: TextStyle(color: Colors.white, fontSize: 28)),
              Icon(iconCard, color: Colors.white, size: 30.0),
            ],
          ),
        )),
    );
  }
}
