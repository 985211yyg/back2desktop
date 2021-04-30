import 'dart:async';

import 'package:flutter/services.dart';

class Back2desktop {
  static const MethodChannel _channel =
      const MethodChannel('plugin/back2desktop');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  void back2Desktop() {
    _channel.invokeMethod("back2desktop");
  }
}
