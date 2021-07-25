import 'package:flutter/material.dart';
import 'package:flutter_design_case_car_advertisement/widgets/selectableButton.dart';

class DayModel {
  DayModel(this.DayNumber, this.DayName, this.IsAvailable);
  int DayNumber;
  String DayName;
  bool IsAvailable;
}

class DaySlider extends StatefulWidget {
  const DaySlider({Key? key}) : super(key: key);

  @override
  _DaySliderState createState() => _DaySliderState();
}

class _DaySliderState extends State<DaySlider> {
  List<DayModel> _days = <DayModel>[
    DayModel(15, "MON", false),
    DayModel(16, "TUE", true),
    DayModel(17, "WED", true),
    DayModel(18, "THU", false),
    DayModel(19, "FRI", true),
    DayModel(22, "MON", true),
    DayModel(23, "TUE", true),
    DayModel(24, "WED", false),
    DayModel(25, "THU", false),
    DayModel(26, "FRI", true),
    DayModel(29, "MON", true),
  ];

  int _index = 5; //_days.length ~/ 2;
  PageController _controller =
      new PageController(viewportFraction: 0.2, initialPage: 5);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _days.length,
        controller: _controller,
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: SelectableButton(
              icon: Icons.ac_unit,
              title: _days[i].DayNumber.toString(),
              subtitle: _days[i].DayName,
              isSelected: i == _index,
              isUnavailable: !_days[i].IsAvailable,
              onPressed: () {
                setState(() {
                  _controller.jumpToPage(i);
                });
              },
            ),
          );
        });
  }
}
