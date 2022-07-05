import 'dart:ui';

import 'package:agenda/models/abstract_cursor_style.dart';
import 'package:agenda/models/default_cursor_style.dart';

class CursorStyle extends AbstractCursorStyle {

  factory CursorStyle({Color? cursorColor}) {
    return CursorStyle._internal(cursorColor ??= const DefaultCursorStyle().cursorColor);
  }

  CursorStyle._internal(Color cursorColor) : super(cursorColor: cursorColor);
}
