import 'package:agenda/models/agenda_row_style/agenda_row_style.dart';
import 'package:flutter/material.dart';

import '../../models/agenda_parameters/agenda_parameters.dart';

class AgendaRow extends StatelessWidget {
  final String timestamp;
  final AgendaRowStyle agendaRowStyle;
  final bool showDiv;

  const AgendaRow({
    Key? key,
    required this.timestamp,
    required this.agendaRowStyle,
    required this.showDiv,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: showDiv ? 40 : 0,
        ),
        Stack(
          children: [
            Text(timestamp),
            const Padding(
              padding: EdgeInsets.only(top: 9),
              child: Divider(
                color: Colors.black,
                height: 0.5,
                thickness: 1,
                indent: 45,
                endIndent: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
