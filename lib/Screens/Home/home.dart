import 'package:flutter/material.dart';
import 'package:vrtti/Screens/AboutUs/about_us.dart';
import 'package:vrtti/Screens/BottomNavigation/animated_bottom_bar.dart';
import 'package:vrtti/Screens/Home/home_holder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> homeView = [
    HomeHolder(),
    HomeHolder(),
    HomeHolder(),
    AboutUs(),
  ];

  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.indigo,
    ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "About",
      iconData: Icons.supervised_user_circle,
      color: Colors.teal,
    ),
  ];

  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeView[selectedBarIndex],
      bottomNavigationBar: AnimatedBottomBar(
        barItems: barItems,
        animationDuration: const Duration(milliseconds: 150),
        barStyle: BarStyle(fontSize: 20.0, iconSize: 30.0),
        onBarTap: (index) {
          setState(() {selectedBarIndex = index;});
        },
      ),
    );
  }
}
