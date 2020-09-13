import 'package:flutter/material.dart';
import 'package:vrtti/Screens/Home/request_new.dart';
import 'package:vrtti/Themes/colors.dart';

class TotalCoursesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget heart() => Stack(
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

    return Container(
      margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.grey)]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 25.0, 5.0, 5.0),
                child: Text(
                  'WE HAVE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 35.0, 5.0, 25.0),
                child: Row(
                  children: [
                    Text(
                      '26',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    const SizedBox(width: 1),
                    heart(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 80.0, 5.0, 5.0),
                child: Text(
                  'COURSES',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 50.0),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Container(
              height: 60.0,
              width: 125.0,
              decoration: BoxDecoration(
                  color: Colors.greenAccent[100].withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Text(
                  'Request New',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    color: COLOR_BRAND_GREEN_DARKEST,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
