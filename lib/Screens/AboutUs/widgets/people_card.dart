import 'package:flutter/material.dart';
import 'package:vrtti/Themes/colors.dart';
import 'package:vrtti/Themes/styles.dart';

class SuperLikesMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: COLOR_BRAND_GREEN.withOpacity(0.2),
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('FilledStacks'),
              background: Image.asset(
                'assets/brand_image/logo/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: ListTile(
                          title: Text(
                            "Anne",
                            style: titleStyle,
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                "assets/brand_image/logo/logo.png",
                                width: 15.0,
                                height: 15.0,
                                color: Colors.black,
                              ),
                              Text(
                                "  34 kilometers",
                                style: whiteSubHeadingTextStyle.copyWith(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                          leading: ClipOval(
                            child: Image.asset(
                              "assets/brand_image/logo/logo.png",
                              width: 50,
                              height: 50,
                            ),
                          ),
                          trailing: SizedBox(
                            width: 75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "ONLINE",
                                        style:
                                            whiteSubHeadingTextStyle.copyWith(
                                                color: Colors.green,
                                                fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Icon(
                                    Icons.star,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
