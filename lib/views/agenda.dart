import 'package:agenda/models/agenda_parameters/agenda_parameters.dart';
import 'package:agenda/models/agenda_parameters/default_agenda_parameters.dart';
import 'package:agenda/models/timestamps_format.dart';
import 'package:flutter/widgets.dart';

/// TODO
class Agenda extends StatefulWidget {

  Agenda(
      {Key? key,
      DateTime? dateTime,
      int? timeIncrement,
      bool? displayCursorTime,
      TimestampsFormat? timestampsFormat})
      : super(key: key) {
    var defaultsAgendaParameters = DefaultAgendaParameters();
    _agendaParameters = AgendaParameters(
      dateTime: dateTime ?? defaultsAgendaParameters.dateTime,
      timeIncrement: timeIncrement ?? defaultsAgendaParameters.timeIncrement,
      displayCursorTime:
          displayCursorTime ?? defaultsAgendaParameters.displayCursorTime,
      timestampsFormat:
          timestampsFormat ?? defaultsAgendaParameters.timestampsFormat,
    );
  }

  late final AgendaParameters _agendaParameters;

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return Text(
        "${widget._agendaParameters.dateTime} + ${widget._agendaParameters.timeIncrement}");
    throw UnimplementedError();
  }
}
