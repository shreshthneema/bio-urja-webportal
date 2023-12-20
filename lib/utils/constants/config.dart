import 'package:flutter/foundation.dart' show immutable;

@immutable
class Config {
  const Config._instance();

  // ignore: do_not_use_environment
  static const baseurl = String.fromEnvironment(
    'Base_Url',
    defaultValue: '10.8.0.33:50000/b1s/v1',
  );

  // static const companyDB = 'DEMO_SAUDA1';
  static const companyDB = 'RA_SAP';
  static const username = 'manager';
  static const password = '1234';
}
