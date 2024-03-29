import 'package:flutter/material.dart';

import 'package:clock/hand_hour.dart';
import 'package:clock/hand_minute.dart';
import 'package:clock/hand_second.dart';

class ClockHands extends StatelessWidget {
  final DateTime dateTime;
  final bool showHourHandleHeartShape;

  ClockHands({this.dateTime, this.showHourHandleHeartShape = false});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            CustomPaint(
              painter: HandHourPainter(
                  hours: dateTime.hour,
                  minutes: dateTime.minute,
                  showHeartShape: showHourHandleHeartShape),
            ),
            CustomPaint(
              painter: HandMinutePainter(
                  minutes: dateTime.minute, seconds: dateTime.second),
            ),
            CustomPaint(
              painter: HandSecondPainter(seconds: dateTime.second),
            ),
          ],
        ),
      ),
    );
  }
}
