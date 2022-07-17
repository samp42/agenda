import '../timestamps/timestamps_format.dart';

abstract class AbstractAgendaParameters {
  DateTime dateTime;
  final int timeIncrement;
  final bool displayCursor;
  final bool displayCursorTime;
  final TimestampsFormat timestampsFormat;
  final bool includeHourFromPreviousDay;

  AbstractAgendaParameters({
    required this.dateTime,
    required this.timeIncrement,
    required this.displayCursor,
    required this.displayCursorTime,
    required this.timestampsFormat,
    required this.includeHourFromPreviousDay,
  });
}
