import 'package:agenda/models/abstract_cursor_style.dart';
import 'package:flutter/material.dart';

class DefaultCursorStyle extends AbstractCursorStyle {
  static DefaultCursorStyle? _instance;

  factory DefaultCursorStyle() {
    _instance ??= DefaultCursorStyle._internal();

    return _instance!;
  }

  DefaultCursorStyle._internal()
      : super(
          cursorColor: const Color(0xFFCD4C4C),
        ) {
    _instance = DefaultCursorStyle();
  }
}
