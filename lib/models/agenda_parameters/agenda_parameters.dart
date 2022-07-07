import '../timestamps_format.dart';

class AgendaParameters {
  DateTime dateTime;
  final int timeIncrement;
  final bool displayCursorTime;
  final TimestampsFormat timestampsFormat;

  AgendaParameters({
    required this.dateTime,
    required this.timeIncrement,
    required this.displayCursorTime,
    required this.timestampsFormat,
  });
}
