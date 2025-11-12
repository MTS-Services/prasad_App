import 'package:flutter/material.dart';

import 'package:prasad/management.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Management());
} 
/*
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'management.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>const Management(), // Wrap your app
    ),
  );
}*/
