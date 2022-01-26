// ignore_for_file: non_constant_identifier_names

import 'package:logger/logger.dart';

Logger logger = Logger(printer: PrettyPrinter());

class ENV {
  static String IMG_URI(String icon, {String? size}) {
    return 'http://openweathermap.org/img/wn/$icon${size ?? ''}.png';
  }

  static String get KEY => '95ce33d8122a545db175f6b35c96f27f';
  static String get LAT => '-6.243236260401683';
  static String get LON => '106.93037575531936';
}

class STATUS {
  static int get OK => 200;
  static int get BAD_REQUEST => 400;
  static int get NOT_AUTHORIZED => 403;
  static int get NOT_FOUND => 404;
  static int get INTERNAL_ERROR => 500;
  static int get CONNECTION_TIMEOUT => 408;
}

class MESSAGE {
  static String get OK => 'Success';
  static String get BAD_REQUEST => 'Bad Request';
  static String get NOT_AUTHORIZED => 'Forbidden';
  static String get NOT_FOUND => 'Not Found';
  static String get INTERNAL_ERROR => 'Internal Server Error';
  static String get CONNECTION_TIMEOUT => "Connection Timeout";
  static String get DEFAULT {
    return 'Please check your internet connection and try again';
  }
}

extension StringHelper on String {
  String removeDouble() {
    final dotIndex = indexOf('.');
    return substring(0, dotIndex);
  }
}

extension DateModifier on DateTime {
  String convertToAgo() {
    Duration diff = DateTime.now().difference(this);

    if (diff.inDays >= 1) {
      return '${diff.inDays} day(s) ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hour(s) ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minute(s) ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} second(s) ago';
    } else {
      return 'Just Now';
    }
  }
}
