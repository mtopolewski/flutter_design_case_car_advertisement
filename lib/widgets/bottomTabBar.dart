import 'package:flutter/material.dart';
import 'dart:math' as Math;

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BottomMenuClipper(),
          child: Container(
            height: 120,
            color: Colors
                .white, //Color(0xFFF8F8F8), //TODO: transparent bottom bar
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            child: Text(
                              "UPCOMING",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: TextButton(
                                  child: Icon(Icons.local_taxi,
                                      color: Color(0xFFD1D7DE)),
                                  onPressed: () => {}),
                            ),
                            Expanded(
                              child: TextButton(
                                  child: Icon(Icons.rice_bowl,
                                      color: Color(0xFFD1D7DE)),
                                  onPressed: () => {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            child: Text("MY HISTORY",
                                style: TextStyle(color: Colors.black)),
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: TextButton(
                                  child: Icon(
                                    Icons.beenhere,
                                    color: Color(0xFFD1D7DE),
                                  ),
                                  onPressed: () => {}),
                            ),
                            Expanded(
                              child: TextButton(
                                  child: Icon(
                                    Icons.settings_rounded,
                                    color: Color(0xFFD1D7DE),
                                  ),
                                  onPressed: () => {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 100,
          child: ClipOval(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x55555555),
                    blurRadius: 30.0,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: ClipOval(
                child: Container(
                  height: 86,
                  width: 86,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Container(
                      height: 78,
                      width: 78,
                      child: TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          height: 30,
                          child: FittedBox(
                            child: Icon(
                              Icons.arrow_upward_sharp,
                              color: Color(0xFFB6093C),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF7F7F7),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BottomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return _getPath(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  double degToRad(num deg) => deg * (Math.pi / 180.0);
  num radToDeg(double rad) => rad * 180.0 / Math.pi;

  Path _getPath(Size size) {
    var path = Path();
    var cornersDiameter = 60.0;
    var cornersRadius = cornersDiameter / 2;
    var buttonRadius = 43.0; //size.width / 4; //60.0;
    var A = 90.0;
    var yOffset = 10.0;
    var alpha = 80;
    var a = Math.sin(degToRad(90 - alpha)) * (buttonRadius);
    var b = Math.cos(degToRad(90 - alpha)) * (buttonRadius);
    var d = buttonRadius - a;

    path.addArc(
        Rect.fromCircle(
            center: Offset(cornersRadius, cornersRadius + yOffset),
            radius: cornersRadius),
        degToRad(-180),
        degToRad(90));

    path.lineTo(size.width / 2 - A, 0 + yOffset);
    path.quadraticBezierTo(
        size.width / 2 - b - 10, 0 + yOffset, size.width / 2 - b, d);

    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, buttonRadius + 7),
            radius: buttonRadius),
        degToRad(-90 - alpha + 5), //TODO: fuszerka
        degToRad(alpha * 2 - 10), //TODO: fuszerka
        false);

    path.quadraticBezierTo(
        size.width / 2 + b + 10, 0 + yOffset, size.width / 2 + A, 0 + yOffset);

    path.lineTo(size.width / 2 + A, 0 + yOffset);

    path.lineTo(size.width - cornersDiameter / 2, 0 + yOffset);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width - cornersRadius, cornersRadius + yOffset),
            radius: cornersRadius),
        degToRad(-90),
        degToRad(90),
        false);
    path.lineTo(size.width, cornersDiameter / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, cornersDiameter / 2);
    path.close();
    return path;
  }
}
