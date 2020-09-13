import 'package:flutter/material.dart';
import 'package:vrtti/Screens/Home/Widgets/appbar.dart';
import 'package:vrtti/Screens/Home/Widgets/total_course.dart';
import 'package:vrtti/Screens/Home/Widgets/single_course_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.90),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Vrtti',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 45.0,
                      letterSpacing: 3.0),
                ),
              ),
              TotalCoursesContainer(),
            ],
          ),
          SizedBox(height: 40.0),
          Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'MY COACHES',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  Text(
                    'VIEW PAST SESSIONS',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  )
                ],
              )),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              SingleTile(name: "Dolar", status: "Away", cardIndex: 1),
              SingleTile(name: "Dolar", status: "Away", cardIndex: 2),
              SingleTile(name: "Dolar", status: "Awayw", cardIndex: 3),
              SingleTile(name: "Dolar", status: "Awayw", cardIndex: 4),
              SingleTile(name: "Dolar", status: "Awayw", cardIndex: 4),
            ],
          )
        ],
      ),
    );
  }
}
