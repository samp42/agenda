import 'package:agenda/models/agenda_parameters/agenda_parameters.dart';
import 'package:agenda/models/timestamps_format.dart';

class DefaultAgendaParameters extends AgendaParameters {

  // DateTime get dateTime => super.dateTime;

  DefaultAgendaParameters() : super(
    dateTime: DateTime.now(),
    displayCursorTime: true,
    timeIncrement: 5,
    timestampsFormat: TimestampsFormat.twelveHour
  );
}