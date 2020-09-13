import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        RotationTransition(
          turns: new AlwaysStoppedAnimation(12 / 360),
          child: Container(
            padding: EdgeInsets.only(left: 2.5, top: 0.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 20,
            ),
          ),
        ),
        RotationTransition(
          turns: new AlwaysStoppedAnimation(-8 / 360),
          child: Container(
            padding: EdgeInsets.only(top: 8.0, right: 3.0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
