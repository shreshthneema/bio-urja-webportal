import 'package:flutter/foundation.dart' show immutable;

typedef CloseLoadingScreen = bool Function();
typedef UpdatingLoadingScreen = bool Function(String text);

@immutable
class LoadingScreenController {
  const LoadingScreenController({
    required this.close,
    required this.update,
  });
  final CloseLoadingScreen close;
  final UpdatingLoadingScreen update;
}
