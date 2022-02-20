import 'package:flutter/material.dart';

class SmallRoundedButton extends StatelessWidget {
  const SmallRoundedButton({required this.icon, Key? key}) : super(key: key);
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFD42E64), width: 2),
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(13),
              ),
            ),
            child: icon),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          //shadowColor: Colors.transparent,
          shape: CircleBorder(),
          padding: EdgeInsets.all(0),
          primary: Color(0xFFCC2058), // <-- Button color
          onPrimary: Colors.grey, // <-- Splash color
        ),
      ),
    );
  }
}
