import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_case_car_advertisement/items/appointment_item.dart';
import 'package:flutter_design_case_car_advertisement/widgets/bottomTabBar.dart';
import 'package:flutter_design_case_car_advertisement/widgets/smallRoundedButton.dart';
import 'package:flutter_design_case_car_advertisement/widgets/topSection.dart';

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
              topRight: Radius.circular(48),
            ),
          ),
        ),
      ),
      body: SafeArea(
        bottom: true,
        child: Container(
          color: Color(0x0FFC11A52),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 240, 0,
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
                                    child: ScrollConfiguration(
                                  behavior:
                                      ScrollConfiguration.of(context).copyWith(
                                    dragDevices: {
                                      PointerDeviceKind.touch,
                                      PointerDeviceKind.mouse,
                                    },
                                  ),
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 30, 0, 120),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Color(0xFFD33068),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20, horizontal: 4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SmallRoundedButton(
                                                  icon: Icon(Icons.arrow_left,
                                                      color: Colors.white,
                                                      size: 20),
                                                ),
                                                Text(
                                                  "SELECT TIME",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                                SmallRoundedButton(
                                                  icon: Icon(Icons.arrow_right,
                                                      color: Colors.white,
                                                      size: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          AppointmentItem(),
                                          AppointmentItem(),
                                          AppointmentItem(),
                                          AppointmentItem(),
                                          AppointmentItem(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: AnnotatedRegion<SystemUiOverlayStyle>(
                              value: SystemUiOverlayStyle.light.copyWith(
                                  //statusBarColor: Colors.purple,
                                  systemNavigationBarColor: Color(0xFFD62D64),
                                  systemNavigationBarDividerColor:
                                      Colors.black),
                              child: BottomTabBar(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TopSection(),
              // Stack(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              //       child: AspectRatio(
              //         aspectRatio: 1.07,
              //         child: ClipPath(
              //           clipper: FirstClipper(),
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 color: Color(0xFFb81a48),
              //                 borderRadius:
              //                     BorderRadius.all(Radius.circular(48))),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              //       child: AspectRatio(
              //         aspectRatio: 1.23,
              //         child: ClipPath(
              //           clipper: SecondClipper(),
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 color:
              //                     Color(0xFFdb2c66), //0xFFCE235B //0x0FFC11A52
              //                 borderRadius:
              //                     BorderRadius.all(Radius.circular(48))),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //       child: AspectRatio(
              //         aspectRatio: 1.4,
              //         child: Container(
              //           decoration: BoxDecoration(
              //             color: Colors.transparent,
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Color(0x44000000),
              //                 blurRadius: 50.0,
              //                 offset: Offset(0, -10),
              //               ),
              //             ],
              //             borderRadius: BorderRadius.all(Radius.circular(48)),
              //           ),
              //           child: ClipPath(
              //             clipper: ThirdClipper(),
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.only(
              //                     bottomLeft: Radius.circular(48),
              //                     bottomRight: Radius.circular(48)),
              //               ),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.center,
              //                 children: [
              //                   Expanded(
              //                       child: Align(
              //                     alignment: Alignment.bottomCenter,
              //                     child: Padding(
              //                       padding:
              //                           const EdgeInsets.fromLTRB(0, 0, 0, 8),
              //                       child: Text("Select Date",
              //                           style: TextStyle(fontSize: 34)),
              //                     ),
              //                   )),
              //                   Text("Select available slot",
              //                       style: TextStyle(color: Color(0xFFB1BABf))),
              //                   Expanded(
              //                     flex: 1,
              //                     child: Center(
              //                       child: Row(
              //                           mainAxisSize: MainAxisSize.min,
              //                           mainAxisAlignment:
              //                               MainAxisAlignment.center,
              //                           children: [
              //                             TextButton(
              //                               onPressed: () {},
              //                               child: Icon(
              //                                 Icons.arrow_left,
              //                                 color: Color(0xFFB1BABF),
              //                               ),
              //                             ),
              //                             Padding(
              //                               padding: const EdgeInsets.fromLTRB(
              //                                   10, 0, 10, 0),
              //                               child: Text("JUNE",
              //                                   style: TextStyle(
              //                                       fontSize: 12,
              //                                       fontWeight: FontWeight.bold,
              //                                       color: Color(0xFFB1BABF))),
              //                             ),
              //                             TextButton(
              //                               onPressed: () {},
              //                               child: Icon(
              //                                 Icons.arrow_right,
              //                                 color: Color(0xFFB1BABF),
              //                               ),
              //                             )
              //                           ]),
              //                     ),
              //                   ),
              //                   Flexible(
              //                     flex: 2,
              //                     child: Padding(
              //                         padding:
              //                             const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //                         child: Container(
              //                             height: 110, child: DaySlider())),
              //                   )
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
