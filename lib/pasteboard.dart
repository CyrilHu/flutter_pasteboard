import 'dart:async';

import 'package:flutter/services.dart';

class Pasteboard {
  static const MethodChannel _channel = const MethodChannel('pasteboard');

  static Future<void> setData(String data) async {
    Clipboard.setData(ClipboardData(text: data));
  }

  static Future<String?> getData(String format) async {
    return (await Clipboard.getData(format))?.text;
  }
}
