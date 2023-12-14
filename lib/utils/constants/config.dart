import 'package:flutter/foundation.dart' show immutable;

@immutable
class Config {
  const Config._instance();

  // ignore: do_not_use_environment
  static const baseurl = String.fromEnvironment(
    'Base_Url',
    defaultValue: 'localhost:3000',
  );
}
