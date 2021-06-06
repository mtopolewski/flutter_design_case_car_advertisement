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
                        child: ClipPath(
                          clipper: FirstClipper(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(48))),
                          ),
                        )),
                    Expanded(flex: 1, child: Container())
                  ],
                ))));
  }
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
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.99999,
        size.width * 0.40, size.height * 0.92);

    path.quadraticBezierTo(size.width * 0.5, size.height * 0.77,
        size.width * 0.60, size.height * 0.92);

    path.quadraticBezierTo(size.width * 0.65, size.height * 0.99999,
        size.width * 0.75, size.height);

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
