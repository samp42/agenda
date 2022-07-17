import 'package:agenda/models/timestamps/timestamps_format.dart';

/// Get the different timestamps with certain criteria.
/// It can return a list of timestamps with or without half-hour timestamps.
extension TimeStampsValues on TimestampsFormat {
  // static List<String> getTimestamps(TimestampsFormat timestampsFormat, bool includeHalfHours) {
  //   List<String> timeStamps = <String>[];
  //
  //   int steps = includeHalfHours ? 25 + 24 : 25;
  //
  //   for(int i=0; i<steps; i++) {
  //     timeStamps.add("$i pm");
  //   }
  //
  //   return timeStamps;
  // }
  //
  // static List<String> _getHalfHourTimestamps(TimestampsFormat timestampsFormat) {
  //   return <String>[];
  // }

  Map<int, String> timestamps() {
    Map<int, String> values = {};
    int index = 0;

      switch(this) {
        case TimestampsFormat.twelveHour:
          for(int h = 0; h < 2; h++) {
            for(int i = 0; i < 12; i++) {
              String suffix;
              if(h == 0 && i != 0) {
                suffix = "am";
              } else {
                suffix = "pm";
              }

              values.addAll({index++: "${i == 0 ? 12 : i} $suffix"});
            }
          }
          values.addAll({index++: "12 am"});

          break;

        case TimestampsFormat.twentyFourHour:
          for(int i = 0; i < 24; i++) {
            values.addAll({index++: "$i h"});
            values.addAll({index++: "0 h"});
          }

          break;
      }

    return values;
  }
}