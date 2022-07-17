import 'dart:ui';

import 'abstract_cursor_style.dart';
import 'default_cursor_style.dart';

class CursorStyle extends AbstractCursorStyle {

  factory CursorStyle({Color? cursorColor}) {
    return CursorStyle._internal(cursorColor ??= DefaultCursorStyle().cursorColor);
  }

  CursorStyle._internal(Color cursorColor) : super(cursorColor: cursorColor);
}
