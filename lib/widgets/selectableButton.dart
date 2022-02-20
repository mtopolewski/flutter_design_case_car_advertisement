import 'package:flutter/material.dart';

class SelectableButton extends StatelessWidget {
  SelectableButton(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.isSelected,
      required this.isUnavailable,
      required this.onPressed});
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;
  final bool isUnavailable;
  final Function onPressed;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 54,
            width: 54,
            decoration: new BoxDecoration(
              color: isSelected
                  ? Color(0xFFCC245D)
                  : isUnavailable
                      ? Color(0xAAFFFFFF)
                      : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: isSelected
                      ? Color(0xFFCC245D)
                      : isUnavailable
                          ? Color(0xAADADADA)
                          : Color(0xFFDADADA),
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextButton(
                onPressed: !isUnavailable
                    ? () {
                        onPressed();
                      }
                    : null,
                style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: isSelected
                          ? Colors.white
                          : isUnavailable
                              ? Color(0x77A0A0A0)
                              : Colors.black),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
            child: Text(subtitle,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: isSelected
                        ? Color(0xFFCC245D)
                        : isUnavailable
                            ? Color(0x77A0A0A0)
                            : Color(0x77A0A0A0))),
          )
        ],
      );
}
