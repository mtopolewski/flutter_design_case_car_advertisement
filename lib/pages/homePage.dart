import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_case_car_advertisement/widgets/daySlider.dart';
import 'dart:math' as Math;
import 'dart:io' as io;

import 'package:flutter_design_case_car_advertisement/widgets/selectableButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SCHEDULE WRAP",
            style: TextStyle(
                color: Color(0x0FFC11A52),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          leading: TextButton(
            onPressed: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Container(
                  height: 30,
                  width: 30,
                  child: FittedBox(
                    child: Icon(Icons.contact_support_sharp,
                        color: Color(0x0FFE5E8EE)),
                  ),
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Colors.white, //B41A47 //bd1c4b
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48))),
          ),
        ),
        body: SafeArea(
          bottom: true,
          child: Container(
            color: Color(0x0FFC11A52),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 270, 0,
                      0), //TODO: replace padding with some more smart approach
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                                child: Column(
                              children: [
                                Expanded(
                                    child: SingleChildScrollView(
                                  physics: BouncingScrollPhysics(),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 30, 0, 120),
                                    child: Column(
                                      children: [
                                        Icon(Icons.arrow_drop_down,
                                            color: Color(
                                                0xFFD33068)), //Icon(Icons.arrow_left),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(4, 20, 4, 20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: 26,
                                                      width: 26,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xFFD42E64),
                                                              width: 2),
                                                          color: Colors
                                                              .transparent,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          13))),
                                                      child: Icon(
                                                          Icons.arrow_left,
                                                          color: Colors.white,
                                                          size: 20),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      elevation: 0,
                                                      shape: CircleBorder(),
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      primary: Color(
                                                          0xFFCC2058), // <-- Button color
                                                      onPrimary: Colors
                                                          .grey, // <-- Splash color
                                                    ),
                                                  ),
                                                ),
                                                Text("SELECT TIME",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white)),
                                                Container(
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Container(
                                                      height: 26,
                                                      width: 26,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xFFD42E64),
                                                              width: 2),
                                                          color: Colors
                                                              .transparent,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          13))),
                                                      child: Icon(
                                                          Icons.arrow_right,
                                                          color: Colors.white,
                                                          size: 20),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      elevation: 0,
                                                      shape: CircleBorder(),
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      primary:
                                                          Color(0xFFCC2058),
                                                      onPrimary: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              26, 16, 26, 16),
                                          padding: EdgeInsets.fromLTRB(
                                              30, 10, 20, 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFCCA1E56),
                                            border: Border.all(
                                                color: Color(0xFFD62D64)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x33000000),
                                                blurRadius: 20.0,
                                                offset: Offset(4, 4),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 6,
                                                height: 6,
                                                decoration: new BoxDecoration(
                                                  color: Color(0xFFFF92B7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          25, 0, 0, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 0, 4),
                                                        child: Text(
                                                          "8:30 AM",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      Text(
                                                        "CAR WRAP SHOP",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFFF92B7),
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Icon(
                                                    Icons
                                                        .arrow_forward_outlined,
                                                    color: Colors.black),
                                                style: ElevatedButton.styleFrom(
                                                  shadowColor:
                                                      Colors.transparent,
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(12),
                                                  primary: Colors
                                                      .white, // <-- Button color
                                                  onPrimary: Colors
                                                      .grey, // <-- Splash color
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              26, 16, 26, 16),
                                          padding: EdgeInsets.fromLTRB(
                                              30, 10, 20, 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFCCA1E56),
                                            border: Border.all(
                                                color: Color(0xFFD62D64)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x33000000),
                                                blurRadius: 20.0,
                                                offset: Offset(4, 4),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 6,
                                                height: 6,
                                                decoration: new BoxDecoration(
                                                  color: Color(0xFFFF92B7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          25, 0, 0, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 0, 4),
                                                        child: Text(
                                                          "8:30 AM",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      Text(
                                                        "CAR WRAP SHOP",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFFF92B7),
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Icon(
                                                    Icons
                                                        .arrow_forward_outlined,
                                                    color: Colors.black),
                                                style: ElevatedButton.styleFrom(
                                                  shadowColor:
                                                      Colors.transparent,
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(12),
                                                  primary: Colors
                                                      .white, // <-- Button color
                                                  onPrimary: Colors
                                                      .grey, // <-- Splash color
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              26, 16, 26, 16),
                                          padding: EdgeInsets.fromLTRB(
                                              30, 10, 20, 10),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFCCA1E56),
                                            border: Border.all(
                                                color: Color(0xFFD62D64)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x33000000),
                                                blurRadius: 20.0,
                                                offset: Offset(4, 4),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 6,
                                                height: 6,
                                                decoration: new BoxDecoration(
                                                  color: Color(0xFFFF92B7),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          25, 0, 0, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 0, 0, 4),
                                                        child: Text(
                                                          "8:30 AM",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      Text(
                                                        "CAR WRAP SHOP",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFFF92B7),
                                                            fontSize: 16),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Icon(
                                                    Icons
                                                        .arrow_forward_outlined,
                                                    color: Colors.black),
                                                style: ElevatedButton.styleFrom(
                                                  shadowColor:
                                                      Colors.transparent,
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(12),
                                                  primary: Colors
                                                      .white, // <-- Button color
                                                  onPrimary: Colors
                                                      .grey, // <-- Splash color
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        // Container(height: 120)
                                      ],
                                    ),
                                  ),
                                ))
                              ],
                            )),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: AnnotatedRegion<SystemUiOverlayStyle>(
                                  value: SystemUiOverlayStyle.light.copyWith(
                                      //statusBarColor: Colors.purple,
                                      systemNavigationBarColor:
                                          Color(0xFFD62D64),
                                      systemNavigationBarDividerColor:
                                          Colors.black),
                                  child: ClipPath(
                                    clipper: BottomMenuClipper(),
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30))),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: TextButton(
                                                          child: Text(
                                                              "UPCOMING",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                          onPressed: () => {},
                                                          style: TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              shape: const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              30)))))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: TextButton(
                                                                child: Icon(
                                                                    Icons
                                                                        .local_taxi,
                                                                    color: Color(
                                                                        0xFFD1D7DE)),
                                                                onPressed: () =>
                                                                    {}),
                                                          ),
                                                          Expanded(
                                                            child: TextButton(
                                                                child: Icon(
                                                                    Icons
                                                                        .rice_bowl,
                                                                    color: Color(
                                                                        0xFFD1D7DE)),
                                                                onPressed: () =>
                                                                    {}),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              )),
                                          Flexible(
                                              flex: 2,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0xFFDADADA),
                                                      blurRadius: 16.0,
                                                      offset: Offset(0, 0),
                                                    ),
                                                  ],
                                                ),
                                                child: ClipOval(
                                                  child: Container(
                                                    height: 100,
                                                    width: 100,
                                                    //color: Colors.yellow,
                                                    child: TextButton(
                                                        onPressed: () {},
                                                        child: Container(
                                                          height: 40,
                                                          //color: Colors.amber,
                                                          child: FittedBox(
                                                              child: Icon(
                                                                  Icons
                                                                      .arrow_upward_sharp,
                                                                  color: Color(
                                                                      0xFFB6093C))),
                                                        )),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors
                                                              .transparent, //Color(0xFFDADADA),
                                                          blurRadius: 6.0,
                                                          offset: Offset(0, 0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          Expanded(
                                              flex: 3,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: TextButton(
                                                          child: Text(
                                                              "MY HISTORY",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                          onPressed: () => {},
                                                          style: TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              shape: const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              30)))))),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: TextButton(
                                                                child: Icon(
                                                                    Icons
                                                                        .beenhere,
                                                                    color: Color(
                                                                        0xFFD1D7DE)),
                                                                onPressed: () =>
                                                                    {}),
                                                          ),
                                                          Expanded(
                                                            child: TextButton(
                                                                child: Icon(
                                                                    Icons
                                                                        .settings_rounded,
                                                                    color: Color(
                                                                        0xFFD1D7DE)),
                                                                onPressed: () =>
                                                                    {}),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: AspectRatio(
                        aspectRatio: 1.07,
                        child: ClipPath(
                          clipper: FirstClipper(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFb81a48),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(48))),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: AspectRatio(
                        aspectRatio: 1.23,
                        child: ClipPath(
                          clipper: SecondClipper(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(
                                    0xFFdb2c66), //0xFFCE235B //0x0FFC11A52
                                borderRadius:
                                    BorderRadius.all(Radius.circular(48))),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: AspectRatio(
                        aspectRatio: 1.4,
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
                            borderRadius: BorderRadius.all(Radius.circular(48)),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                      child: Text("Select Date",
                                          style: TextStyle(fontSize: 34)),
                                    ),
                                  )),
                                  Text("Select available slot",
                                      style:
                                          TextStyle(color: Color(0xFFB1BABf))),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                  const EdgeInsets.fromLTRB(
                                                      10, 0, 10, 0),
                                              child: Text("JUNE",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Color(0xFFB1BABF))),
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
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Container(
                                            height: 110, child: DaySlider())),
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
              ],
            ),
          ),
        ));
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

class BottomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return _getPath3(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

  double degToRad(num deg) => deg * (Math.pi / 180.0);
  num radToDeg(double rad) => rad * 180.0 / Math.pi;

  Path _getPath2(Size size) {
    var path = new Path();
    var offsetX = 80.0;
    var offsetY = 20.0;
    var buttonWidth = size.width / 4;

    var cornersDiameter = 60.0;
    var innerCircleOffsetX = 50; //(size.width - 20) / 3 / 2;
    path.lineTo(size.width / 2 - buttonWidth / 2 - cornersDiameter / 2, 0);
    path.quadraticBezierTo(size.width / 2 - buttonWidth / 2, 0,
        size.width / 2 - buttonWidth / 2 + 10, buttonWidth / 2 - 30);

    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, buttonWidth / 2),
            radius: buttonWidth / 2),
        degToRad(-130),
        degToRad(80),
        false);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(
                size.width / 2 + innerCircleOffsetX + cornersDiameter / 2,
                cornersDiameter / 2),
            radius: cornersDiameter / 2),
        degToRad(-180),
        degToRad(90),
        false);

    path.lineTo(size.width / 2 + offsetX, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  Path _getPath3(Size size) {
    var path = Path();
    var cornersDiameter = 60.0;
    var cornersRadius = cornersDiameter / 2;
    var buttonRadius = 50.0; //size.width / 4; //60.0;
    var a = 90;
    var b = 52.0;
    var c = 30.0;
    var alpha = 60;
    var aa = Math.sin(degToRad(90 - alpha)) * buttonRadius;
    var bb = Math.cos(degToRad(90 - alpha)) * buttonRadius;
    b = bb;
    c = buttonRadius - aa;

    path.addArc(
        Rect.fromCircle(
            center: Offset(cornersRadius, cornersRadius),
            radius: cornersRadius),
        degToRad(-180),
        degToRad(90));

    path.lineTo(size.width / 2 - a, 0);
    path.quadraticBezierTo(size.width / 2 - b - 10, 0, size.width / 2 - b, c);

    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width / 2, buttonRadius), radius: buttonRadius),
        degToRad(-90 - alpha),
        degToRad(alpha * 2),
        false);

    path.quadraticBezierTo(size.width / 2 + b + 10, 0, size.width / 2 + a, 0);

    path.lineTo(size.width / 2 + a, 0);

    path.lineTo(size.width - cornersDiameter / 2, 0);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width - cornersRadius, cornersRadius),
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
