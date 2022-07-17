import 'package:agenda/models/agenda_row_style/abstract_agenda_row_style.dart';
import 'package:agenda/models/agenda_row_style/timestamp_alignment.dart';

class DefaultAgendaRowStyle extends AbstractAgendaRowStyle {
  static DefaultAgendaRowStyle? _instance;

  factory DefaultAgendaRowStyle() {
    _instance ??= DefaultAgendaRowStyle._internal();

    return _instance!;
  }

  DefaultAgendaRowStyle._internal()
      : super(
          height: 64,
          timestampAlignment: TimestampAlignment.bottom
        );
}
