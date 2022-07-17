import 'package:agenda/models/agenda_parameters/abstract_agenda_parameters.dart';
import 'package:agenda/models/timestamps/timestamps_format.dart';

class DefaultAgendaParameters extends AbstractAgendaParameters {
  static DefaultAgendaParameters? _instance;

  factory DefaultAgendaParameters() {
    _instance ??= DefaultAgendaParameters._internal();

    return _instance!;
  }

  DefaultAgendaParameters._internal() : super(
      dateTime: DateTime.now(),
      displayCursor: true,
      displayCursorTime: true,
      timeIncrement: 5,
      timestampsFormat: TimestampsFormat.twelveHour,
      includeHourFromPreviousDay: false
  );
}
