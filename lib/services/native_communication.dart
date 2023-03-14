import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeCommunication {
  static const platform = MethodChannel('CrispChannel');

  static Future<void> openActivity() async {
    try {
      await platform.invokeMethod('openActivity');
    } on PlatformException catch (e) {
      debugPrint("Failed to open activity: '${e.message}'.");
    }
  }
}
