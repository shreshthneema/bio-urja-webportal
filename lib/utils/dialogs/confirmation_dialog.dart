import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/utils/constants/screen_breakpoints.dart';
import '../extensions/build_context_ext.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
    super.key,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return !kIsWeb && Platform.isIOS
        ? _IosConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          )
        : _AndroidConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          );
  }
}

class _AndroidConfirmationDialog extends StatelessWidget {
  const _AndroidConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titleTextStyle: context.textTheme.headlineLarge,
      titlePadding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
      contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
      actionsPadding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
      insetPadding: EdgeInsets.symmetric(
        horizontal: context.screenWidth >= tabletScreenBreakpoint
            ? context.screenWidth * 0.3
            : 50,
      ),
      elevation: 100,
      title: Text(title),
      content: Text(
        message,
        style: context.textTheme.titleMedium,
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.onBackground,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          ),
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        const SizedBox(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isDestructive
                ? context.colorScheme.error
                : context.colorScheme.secondary,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          ),
          onPressed: () => Navigator.pop(context, true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}

class _IosConfirmationDialog extends StatelessWidget {
  const _IosConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    const OutlinedBorder buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    );

    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: context.colorScheme.onBackground,
            shape: buttonShape,
          ),
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: isDestructive
                ? context.colorScheme.error
                : context.colorScheme.onBackground,
            shape: buttonShape,
          ),
          onPressed: () => Navigator.pop(context, true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}
