import 'package:flutter/material.dart';
import 'package:vrtti/Screens/AboutUs/widgets/people_card.dart';
import 'package:vrtti/Themes/colors.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SuperLikesMePage(),
      // CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       backgroundColor: COLOR_BRAND_GREEN.withOpacity(0.2),
      //       expandedHeight: 200,
      //       pinned: true,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Text('FilledStacks'),
      //         background: Image.asset(
      //           'assets/brand_image/logo/logo.png',
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //       child: Column(),
      //     ),
      //   ],
      // ),
    );
  }
}
