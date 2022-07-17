import 'package:agenda/models/agenda_parameters/agenda_parameters.dart';
import 'package:agenda/models/agenda_row_style/agenda_row_style.dart';
import 'package:agenda/views/supporting_views/agenda_row.dart';
import 'package:flutter/material.dart';

import '../models/timestamps/timestamps_values.dart';
import '../models/timestamps/timestamps_format.dart';

class Frame extends StatelessWidget {
  final TimestampsFormat timestamps;
  final AgendaParameters agendaParameters;
  final AgendaRowStyle agendaRowStyle;

  const Frame({
    Key? key,
    required this.timestamps,
    required this.agendaParameters,
    required this.agendaRowStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      child: Column(
        children: [
          for (var timestamp in timestamps.timestamps().entries)
            Column(
              children: [
                AgendaRow(
                  timestamp: timestamp.value,
                  showDiv: timestamp.key == 0 ? agendaParameters.includeHourFromPreviousDay : true,
                  agendaRowStyle: agendaRowStyle,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
