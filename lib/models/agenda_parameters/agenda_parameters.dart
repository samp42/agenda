import 'package:agenda/models/agenda_parameters/abstract_agenda_parameters.dart';
import 'package:agenda/models/agenda_parameters/default_agenda_parameters.dart';
import 'package:agenda/models/timestamps/timestamps_format.dart';

class AgendaParameters extends AbstractAgendaParameters {
  factory AgendaParameters(
      {DateTime? dateTime,
      int? timeIncrement,
      bool? displayCursor,
      bool? displayCursorTime,
      TimestampsFormat? timestampsFormat,
      bool? includeHourFromPreviousDay}) {
    return AgendaParameters._internal(
      dateTime ??= DefaultAgendaParameters().dateTime,
      timeIncrement ??= DefaultAgendaParameters().timeIncrement,
      displayCursor ??= DefaultAgendaParameters().displayCursor,
      displayCursorTime ??= DefaultAgendaParameters().displayCursorTime,
      timestampsFormat ??= DefaultAgendaParameters().timestampsFormat,
      includeHourFromPreviousDay ??=
          DefaultAgendaParameters().includeHourFromPreviousDay,
    );
  }

  AgendaParameters._internal(
    DateTime dateTime,
    int timeIncrement,
    bool displayCursor,
    bool displayCursorTime,
    TimestampsFormat timestampsFormat,
    bool includeHourFromPreviousDay,
  ) : super(
          dateTime: dateTime,
          timeIncrement: timeIncrement,
          displayCursor: displayCursor,
          displayCursorTime: displayCursorTime,
          timestampsFormat: timestampsFormat,
          includeHourFromPreviousDay: includeHourFromPreviousDay,
        );
}
