import 'package:flutter/material.dart';
import 'package:flutter_design_case_car_advertisement/widgets/daySlider.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Container(
            height: 290,
            child: ClipPath(
              clipper: FirstClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFb81a48),
                  borderRadius: BorderRadius.all(
                    Radius.circular(48),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Container(
            height: 280,
            child: ClipPath(
              clipper: SecondClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFdb2c66), //0xFFCE235B //0x0FFC11A52
                  borderRadius: BorderRadius.all(
                    Radius.circular(48),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            height: 270,
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Color(0x44000000),
                  blurRadius: 50.0,
                  offset: Offset(0, -10),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(48),
              ),
            ),
            child: ClipPath(
              clipper: ThirdClipper(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(48),
                    bottomRight: Radius.circular(48),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(
                          "Select Date",
                          style: TextStyle(fontSize: 34),
                        ),
                      ),
                    )),
                    Text(
                      "Select available slot",
                      style: TextStyle(
                        color: Color(0xFFB1BABf),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_left,
                                  color: Color(0xFFB1BABF),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text(
                                  "JUNE",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFB1BABF),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Color(0xFFB1BABF),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          height: 110,
                          child: DaySlider(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ThirdClipper extends CustomClipper<Path> {
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

    path.lineTo(size.width * 0.32, size.height);

    var offsetX = 20;

    var fsepY = size.height * 0.95;
    var fcpX = size.width * 0.4;

    var firstControlPoint = Offset(fcpX, size.height);
    var firstEndPoint = Offset(size.width / 2 - offsetX, fsepY);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 2, size.height * 0.895);
    var secondEndPoint = Offset(size.width / 2 + offsetX, fsepY);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width - fcpX, size.height);
    var thirdEndPoint = Offset(size.width * 0.68, size.height);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

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
    path.lineTo(0, size.height);

    path.lineTo(size.width * 0.32, size.height);

    var offsetX = 17;

    var fsepY = size.height * 0.95;
    var fcpX = size.width * 0.4;

    var firstControlPoint = Offset(fcpX, size.height);
    var firstEndPoint = Offset(size.width / 2 - offsetX, fsepY);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 2, size.height * 0.91);
    var secondEndPoint = Offset(size.width / 2 + offsetX, fsepY);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = Offset(size.width - fcpX, size.height);
    var thirdEndPoint = Offset(size.width * 0.68, size.height);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
