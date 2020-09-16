import 'package:flutter/material.dart';
import 'package:vrtti/Screens/Home/Widgets/custom_shape_paint.dart';
import 'package:vrtti/Themes/colors.dart';

class LanguageTile extends StatelessWidget {
  final double _borderRadius = 24;
  final int index;

  LanguageTile({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_borderRadius),
              gradient: LinearGradient(
                  colors: [COLOR_BRAND_GREEN_LIGHT, COLOR_BRAND_GREEN],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              boxShadow: [
                BoxShadow(
                  color: COLOR_BRAND_GREEN,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: CustomPaint(
              size: Size(100, 170),
              painter: CustomCardShapePainter(
                _borderRadius,
                COLOR_BRAND_GREEN_LIGHT,
                COLOR_BRAND_GREEN,
              ),
            ),
          ),
          Positioned.fill(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(
                        width: 3,
                        color: Colors.white,
                        style: BorderStyle.solid),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        AssetImage('assets/icons/language/node.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nodejs",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Beginer\nIntermediate\nMastery",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Rating",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      RatingBar(rating: 5),
                    ],
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

class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({Key key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(rating.floor(), (index) {
        return Icon(
          Icons.star,
          color: Colors.white,
          size: 16,
        );
      }),
    );
  }
}
