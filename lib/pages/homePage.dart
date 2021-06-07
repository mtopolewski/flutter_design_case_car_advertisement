import 'package:flutter/material.dart';
import 'dart:math' as Math;

import 'package:flutter_design_case_car_advertisement/widgets/selectableButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "SCHEDULE WRAP",
            style: TextStyle(
                color: Color(0x0FFC11A52),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.transparent,
                  onSurface: Colors.red,
                  shadowColor: Colors.transparent),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 12, 0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.transparent,
                      onSurface: Colors.red,
                      shadowColor: Colors.transparent),
                  child: Container(
                    height: 30,
                    width: 70,
                    child: FittedBox(
                      child: Icon(Icons.contact_support_sharp,
                          color: Color(0x0FFE5E8EE)),
                    ),
                  )),
            )
          ],
          backgroundColor: Color(0xFFb81a48), //Colors.white,
          shadowColor: Colors.transparent,
          flexibleSpace: Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8.5, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, //B41A47 //bd1c4b
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48))),
            ),
          ),
        ),
        body: Container(
            color: Color(0x0FFC11A52),
            child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: AspectRatio(
                              aspectRatio: 0.97,
                              child: ClipPath(
                                clipper: FirstClipper(),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFb81a48),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(48))),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: AspectRatio(
                              aspectRatio: 1.13,
                              child: ClipPath(
                                clipper: SecondClipper(),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(
                                          0xFFdb2c66), //0xFFCE235B //0x0FFC11A52
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(48))),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1.3,
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
                                  clipper: ThirdClipper(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(48),
                                          bottomRight: Radius.circular(48)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("Select Date"),
                                        Text("Select available slot"),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.arrow_left),
                                              Text("June"),
                                              Icon(Icons.arrow_right)
                                            ]),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Flexible(
                                                    child: SelectableButton(
                                                      icon: Icons.ac_unit,
                                                      title: "15",
                                                      subtitle: "MON",
                                                      isSelected: false,
                                                      isUnavailable: false,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: SelectableButton(
                                                      icon: Icons.ac_unit,
                                                      title: "16",
                                                      subtitle: "TUE",
                                                      isSelected: false,
                                                      isUnavailable: true,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: SelectableButton(
                                                      icon: Icons.ac_unit,
                                                      title: "19",
                                                      subtitle: "FRI",
                                                      isSelected: true,
                                                      isUnavailable: false,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: SelectableButton(
                                                      icon: Icons.ac_unit,
                                                      title: "22",
                                                      subtitle: "MON",
                                                      isSelected: false,
                                                      isUnavailable: false,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: SelectableButton(
                                                      icon: Icons.ac_unit,
                                                      title: "25",
                                                      subtitle: "THU",
                                                      isSelected: false,
                                                      isUnavailable: true,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        )
                                      ],
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
