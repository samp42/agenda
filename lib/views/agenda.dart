import 'package:flutter/widgets.dart';

/// TODO
class Agenda extends StatefulWidget {
  // const Agenda();

  factory Agenda({dateTime, timeIncrement}) {
    return Agenda._internal(
        dateTime ??= DateTime.now(),
        timeIncrement ??= 1.0
    );
  }

  const Agenda._internal(this._dateTime, this._timeIncrement);

  /// the current timestamp
  final DateTime _dateTime;

  /// the time increments by which we wish the cursor to increment
  final num _timeIncrement;

  // bool _isCurrentDay = dateTime!.isAtSameMomentAs(DateTime.now());

  DateTime get date => _dateTime;
  num get timeIncrement => _timeIncrement;

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return Text("${widget.date} + ${widget.timeIncrement}");
  }
}
