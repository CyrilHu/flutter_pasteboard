
import 'dart:async';

import 'package:flutter/services.dart';

class Pasteboard {
  static const MethodChannel _channel =
      const MethodChannel('pasteboard');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
