import 'package:agenda/models/agenda_row_style/timestamp_alignment.dart';

abstract class AbstractAgendaRowStyle {
  final double height;
  final TimestampAlignment timestampAlignment;

  const AbstractAgendaRowStyle({
    required this.height,
    required this.timestampAlignment,
  });
}
