import 'package:flutter/material.dart';

import '../constants/screen_breakpoints.dart';

extension Context on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  void closeKeyboard() => FocusScope.of(this).unfocus();

  void showSnackBarMessage(
    String message, {
    bool isError = false,
  }) {
    final theme = Theme.of(this);
    final Color? foregroundColor;
    final Color? backgroundColor;
    if (isError) {
      foregroundColor = theme.colorScheme.onError;
      backgroundColor = theme.colorScheme.error;
    } else {
      foregroundColor = null;
      backgroundColor = null;
    }

    if (mounted) {
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 5),
          backgroundColor: backgroundColor,
          content: Text(
            message,
            style: TextStyle(color: foregroundColor),
          ),
        ),
      );
    }
  }

  // bool get isDesktop {
  //   final maxWidth = MediaQuery.sizeOf(this).width;
  //   return maxWidth > tabletScreenBreakpoint;
  // }

  bool get isMobileScreen =>
      MediaQuery.of(this).size.width <= mobileScreenBreakpoint;

  bool get isTabletScreen {
    final current = MediaQuery.of(this).size.width;
    return current >= mobileScreenBreakpoint &&
        current <= tabletScreenBreakpoint;
  }

  bool get isSmallDesktopScreen =>
      MediaQuery.of(this).size.width <= smallDesktopScreenBreakpoint &&
      MediaQuery.of(this).size.width > tabletScreenBreakpoint;

  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}
