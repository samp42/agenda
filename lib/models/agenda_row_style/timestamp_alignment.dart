import 'package:flutter/rendering.dart';

enum TimestampAlignment {
  top,
  center,
  bottom,
  // aligned
}

extension TimestampAlignmentExtension on TimestampAlignment {
  Alignment get alignment {
    switch (this) {
      case TimestampAlignment.top:
        return Alignment.topLeft;
      case TimestampAlignment.center:
        return Alignment.centerLeft;
      case TimestampAlignment.bottom:
        return Alignment.bottomLeft;
    }
  }
}
