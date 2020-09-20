import 'package:flutter/material.dart';
import 'package:vrtti/Screens/Home/Widgets/language_tile.dart';
import 'package:vrtti/Screens/Home/Widgets/total_course.dart';

class HomeHolder extends StatefulWidget {
  @override
  _HomeHolderState createState() => _HomeHolderState();
}

class _HomeHolderState extends State<HomeHolder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Widget mainPageListView() => ListView(
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment(0.0, -0.90),
                  height: 120.0,
                  child: Image.asset("assets/brand_image/logo/logo.png"),
                ),
                Container(
                  alignment: Alignment(0.0, -0.90),
                  height: 100.0,
                  color: Colors.transparent,
                  child: Text(
                    'Vrtti',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 45.0,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                TotalCoursesContainer(),
              ],
            ),
            SizedBox(height: 15.0),
            LanguageTile(index: 4),
            LanguageTile(index: 4),
            LanguageTile(index: 4),
            LanguageTile(index: 4),
          ],
        );

    return Scaffold(
      key: _scaffoldKey,
      body: mainPageListView(),
    );
  }
}