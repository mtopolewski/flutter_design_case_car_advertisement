import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(26, 16, 26, 16),
      padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFCCA1E56),
        border: Border.all(color: Color(0xFFD62D64)),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 20.0,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Text(
                      "8:30 AM",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Text(
                    "CAR WRAP SHOP",
                    style: TextStyle(color: Color(0xFFFF92B7), fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.arrow_forward_outlined, color: Colors.black),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              shape: CircleBorder(),
              padding: EdgeInsets.all(12),
              primary: Colors.white, // <-- Button color
              onPrimary: Colors.grey, // <-- Splash color
            ),
          )
        ],
      ),
    );
  }
}
