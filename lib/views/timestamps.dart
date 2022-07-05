import 'dart:core';

import 'package:flutter/widgets.dart';

class TimeStamps extends StatelessWidget {
  List<String> times = <String>[];

  TimeStamps({Key? key}) : super(key: key) {
    times.add("t1");
    times.add("t2");
    times.add("t3");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(var timeStamp in times) Text(timeStamp)
      ]
    );
  }

}