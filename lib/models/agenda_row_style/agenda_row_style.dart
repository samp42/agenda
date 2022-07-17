import 'package:agenda/models/agenda_row_style/abstract_agenda_row_style.dart';
import 'package:agenda/models/agenda_row_style/default_agenda_row_style.dart';
import 'package:agenda/models/agenda_row_style/timestamp_alignment.dart';

class AgendaRowStyle extends AbstractAgendaRowStyle {
  factory AgendaRowStyle({
    double? height,
    TimestampAlignment? timestampAlignment,
  }) {
    return AgendaRowStyle._internal(
      height ??= DefaultAgendaRowStyle().height,
      timestampAlignment ??= DefaultAgendaRowStyle().timestampAlignment
    );
  }

  AgendaRowStyle._internal(double height, TimestampAlignment timestampAlignment)
      : super(height: height, timestampAlignment: timestampAlignment);
}
