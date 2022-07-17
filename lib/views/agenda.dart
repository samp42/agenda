import 'package:agenda/models/agenda_row_style/agenda_row_style.dart';
import 'package:agenda/models/agenda_style.dart';
import 'package:agenda/views/frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/agenda_parameters/agenda_parameters.dart';

/// TODO
class Agenda extends StatefulWidget {
  late final AgendaParameters _agendaParameters;
  late final AgendaStyle _agendaStyle;
  late final AgendaRowStyle _agendaRowStyle;

  Agenda({
    Key? key,
    AgendaParameters? agendaParameters,
    AgendaStyle? agendaStyle,
    AgendaRowStyle? agendaRowStyle,
  }) : super(key: key) {
    _agendaParameters = agendaParameters ?? AgendaParameters();
    // _agendaStyle = agendaStyle ?? AgendaStyle();
    _agendaRowStyle = agendaRowStyle ?? AgendaRowStyle();
  }

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Frame(
                timestamps: widget._agendaParameters.timestampsFormat,
                agendaParameters: widget._agendaParameters,
                agendaRowStyle: widget._agendaRowStyle,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Divider(
                  color: Colors.red,
                  height: 0.5,
                  thickness: 1.5,
                  indent: 45,
                  endIndent: 0,
                ),
              ),
            ],
          ),
        ),
        // Text("${widget._agendaParameters.dateTime} + ${widget._agendaParameters.timeIncrement}"),
      ],
    );
  }
}
