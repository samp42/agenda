import 'package:agenda/models/timestamps_format_enum.dart';

/// Get the different timestamps with certain criteria.
/// It can return a list of timestamps with or without half-hour timestamps.
class TimeStampsValues {
  static List<String> getTimestamps(TimestampsFormatEnum timestampsFormat, bool includeHalfHours) {
    List<String> timeStamps = <String>[];

    int steps = includeHalfHours ? 25 + 24 : 25;

    for(int i=0; i<steps; i++) {
      timeStamps.add("$i pm");
    }

    return timeStamps;
  }

  static List<String> _getHalfHourTimestamps(TimestampsFormatEnum timestampsFormat) {
    return <String>[];
  }
}