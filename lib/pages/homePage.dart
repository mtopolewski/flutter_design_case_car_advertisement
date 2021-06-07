import 'package:flutter/material.dart';
import 'dart:math' as Math;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0x0FFC11A52),
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
                            child: ClipPath(
                              clipper: Thirdlipper(),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFB41A47),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(48))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                            child: ClipPath(
                              clipper: Thirdlipper(),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFCE235B),
                                    //border: Border.all(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(48))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              //padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x44000000),
                                      blurRadius: 50.0,
                                      offset: Offset(0, -10),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(48)),
                                ),
                                child: ClipPath(
                                  clipper: Thirdlipper(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(48)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Container())
                  ],
                ))));
  }
}

class Thirdlipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    path.lineTo(size.width * 0.32, size.height);

    var offsetX = 23;

    var fsepY = size.height * 0.95;
    var fcpX = size.width * 0.4;

    var firstControlPoint = Offset(fcpX, size.height);
    var firstEndPoint = Offset(size.width / 2 - offsetX, fsepY);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 2, size.height * 0.89);
    var secondEndPoint = Offset(size.width / 2 + offsetX, fsepY);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width - fcpX, size.height);
    var thirdEndPoint = Offset(size.width * 0.68, size.height);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width / 2, size.height * 0.9);
    //path.lineTo(size.width * 0.68, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class SecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    path.lineTo(size.width * 0.3, size.height);

    var offsetX = 20;

    var firstControlPoint = Offset(size.width * 0.4, size.height * 1);
    var firstEndPoint = Offset(size.width / 2 - offsetX, size.height * 0.95);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 2, size.height * 0.9);
    var secondEndPoint = Offset(size.width / 2 + offsetX, size.height * 0.95);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width * 0.6, size.height * 1);
    var thirdEndPoint = Offset(size.width * 0.7, size.height);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width / 2, size.height * 0.9);
    path.lineTo(size.width * 0.7, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double degToRad(num deg) => deg * (Math.pi / 180.0);

    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.25, size.height);

    // var firstStart = Offset(size.width * 0.25, size.height * 0.99999);
    // var firstEnd = Offset(size.width * 0.40, size.height * 0.92);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.quadraticBezierTo(size.width * 0.35, size.height * 1,
        size.width * 0.42, size.height * 0.92);

    path.quadraticBezierTo(size.width * 0.5, size.height * 0.84,
        size.width * 0.58, size.height * 0.92);

    path.quadraticBezierTo(size.width * 0.65, size.height * 1.0,
        size.width * 0.74, size.height * 1);

    // Offset center = Offset(size.width / 2, size.height);
    // path.arcTo(
    //     // Rect.fromLTWH(
    //     //     size.width / 2, size.height / 2, size.width / 4, size.height / 4),
    //     Rect.fromCircle(center: center, radius: 2),
    //     degToRad(0),
    //     degToRad(90),
    //     true);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  // @override
  // Path getClip(Size size) {
  //   var path = Path();

  //   path.moveTo(size.width * 0.15, size.height);

  //   path.quadraticBezierTo(size.width * 0.25, size.height * 0.99999,
  //       size.width * 0.40, size.height * 0.92);

  //   path.quadraticBezierTo(size.width * 0.5, size.height * 0.87,
  //       size.width * 0.60, size.height * 0.92);

  //   path.quadraticBezierTo(size.width * 0.75, size.height * 0.99999,
  //       size.width * 0.85, size.height);

  //   path.lineTo(size.width, size.height);
  //   path.close();

  //   return path;
  // }

  // @override
  // getClip(Size size) {
  //   var g1 = 40;
  //   var d1 = 2 * g1;
  //   var g2 = 1 * g1;
  //   var curvePositionY = 6 / 8;
  //   var path = new Path();
  //   path.lineTo(0, curvePositionY * size.height);

  //   var firstControlPoint =
  //       Offset(size.width / 6, curvePositionY * size.height - g1);
  //   var firstEndPoint = Offset(size.width / 3, curvePositionY * size.height);
  //   var secondControlPoint =
  //       Offset(3 * size.width / 4, curvePositionY * size.height + d1);
  //   var secondEndPoint = Offset(size.width, curvePositionY * size.height - g2);

  //   path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
  //       firstEndPoint.dx, firstEndPoint.dy);
  //   path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
  //       secondEndPoint.dx, secondEndPoint.dy);

  //   path.lineTo(size.width, curvePositionY * size.height);
  //   path.lineTo(size.width, size.height);
  //   path.lineTo(0, size.height);

  //   path.close();
  //   return path;
  // }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }

  // @override
  // Path getClip(Size size) {
  //   final double innerCircleRadius = -50.0;

  //   Path path = Path();
  //   path.lineTo(0, size.height);
  //   path.quadraticBezierTo(size.width / 2 - (innerCircleRadius / 2) - 30,
  //       size.height + 15, size.width / 2 - 75, size.height + 50);
  //   path.cubicTo(
  //       size.width / 2 - 40,
  //       size.height + innerCircleRadius - 40,
  //       size.width / 2 + 40,
  //       size.height + innerCircleRadius - 40,
  //       size.width / 2 + 75,
  //       size.height + 50);
  //   path.quadraticBezierTo(size.width / 2 + (innerCircleRadius / 2) + 30,
  //       size.height + 15, size.width, size.height);
  //   path.lineTo(size.width, 0.0);
  //   path.close();

  //   return path;
  //   ;
  // }
}
