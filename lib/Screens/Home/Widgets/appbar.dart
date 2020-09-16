import 'package:flutter/material.dart';

AppBar homeAppBar(GlobalKey<ScaffoldState> _scaffoldKey) => AppBar(
      automaticallyImplyLeading: false,
      title: Container(
        height: 55,
        width: 55,
        child: Image.asset("assets/brand_image/logo/logo.png"),
      ),
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          iconSize: 35,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          }),
      actions: <Widget>[
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          iconSize: 30,
        )
      ],
    );
