//** Author Utils : https://github.com/iampawan/VelocityX/blob/stable/lib/src/velocity_xx.dart
// ** Keep check repository to sync

import 'dart:async';
import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Mixin [Utils] provides basic operations and utilities
mixin Utils {
  /// [EdgeInsets] with custom [left], [right], [top] & [bottom] values
  static EdgeInsets mLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) =>
      EdgeInsets.fromLTRB(left, top, right, bottom);

  /// [EdgeInsets] with custom symmetric [v] for vertical and [h] for horizontal value
  static EdgeInsets mSymmetric({double v = 0.0, double h = 0.0}) =>
      EdgeInsets.symmetric(
        vertical: v,
        horizontal: h,
      );

  /// [EdgeInsets] with custom [left], [right], [top] & [bottom] values
  static EdgeInsets mOnly(
          {double left = 0.0,
          double right = 0.0,
          double top = 0.0,
          double bottom = 0.0}) =>
      EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);

  /// [ShapeBorder] with border radius 7.5
  static ShapeBorder roundedSm =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.5));

  /// [ShapeBorder] with border radius 15
  static ShapeBorder rounded =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15));

  /// [ShapeBorder] with border radius 30
  static ShapeBorder roundedLg =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));

  /// [ShapeBorder] with custom border [radius]
  static ShapeBorder withRounded(double radius) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

  // Emit a log event.
  ///
  /// This function was designed to map closely to the logging information
  /// collected by `package:logging`.
  ///
  /// - [message] is the log message
  /// - [time] (optional) is the timestamp
  /// - [sequenceNumber] (optional) is a monotonically increasing sequence number
  /// - [level] (optional) is the severity level (a value between 0 and 2000); see
  ///   the `package:logging` `Level` class for an overview of the possible values
  /// - [name] (optional) is the name of the source of the log message
  /// - [zone] (optional) the zone where the log was emitted
  /// - [error] (optional) an error object associated with this log event
  /// - [stackTrace] (optional) a stack trace associated with this log event
  static void log(String message,
          {DateTime time,
          int sequenceNumber,
          int level = 0,
          String name = '',
          Zone zone,
          Object error,
          StackTrace stackTrace}) =>
      dev.log(message,
          error: error,
          level: level,
          name: name,
          sequenceNumber: sequenceNumber,
          stackTrace: stackTrace,
          time: time,
          zone: zone);

  /// Send a reference to [object] to any attached debuggers.
  ///
  /// Debuggers may open an inspector on the object. Returns the argument.
  static void inspect(Object object) => dev.inspect(object);

  ///Checks whether release mode or not
  static bool get isReleaseMode => kReleaseMode;

  ///Checks whether debug mode or not
  static bool get isDebugMode => kDebugMode;

  ///Checks whether profile mode or not
  static bool get isProfileMode => kProfileMode;

  ///Checks whether web or not
  static bool get isWeb => kIsWeb;

  ///Checks whether android or not
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;

  /// Get color from the hex value
  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  /// Get Color in [int]
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    hexColor = hexColor.replaceAll('0X', '');
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  /// Get Random Non-Primary Color
  static Color get randomOpaqueColor =>
      Color(Random().nextInt(0xffffffff)).withAlpha(0xff);

  /// Get Random Primary Color
  static Color get randomPrimaryColor =>
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  /// Get Random Non-Primary Color
  static Color get randomColor => Color.fromARGB(
      100, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
}
