import 'dart:math';

import 'package:flutter/material.dart';
import '../../utils/index.dart';

class FormSection extends StatelessWidget {
  final Widget title;
  final Widget? field;
  final Iterable<Widget>? fields;
  final double? fieldDefaultWidth;
  final double? defaultWidth;
  final double maxWidthPercent;
  final double? defaultTitleWidth;
  final double leftPadding;

  const FormSection({
    super.key,
    required this.title,
    this.field,
    this.fields,
    this.fieldDefaultWidth,
    this.defaultWidth,
    this.maxWidthPercent = 0.5,
    this.defaultTitleWidth,
    this.leftPadding = 20,
  });

  @override
  Widget build(BuildContext context) {
    final wrapAxis = context.isMobileScreen ? Axis.vertical : null;

    double width = defaultWidth ??
        (context.isMobileScreen || context.isTabletScreen
            ? context.screenWidth
            : context.screenWidth * maxWidthPercent);

    const double rightPadding = 10;

    final double titleWidth =
        defaultTitleWidth ?? (context.isSmallDesktopScreen ? 90 : 130);

    final double fieldWidth =
        width - titleWidth - leftPadding - rightPadding - 20;

    return Container(
      padding: EdgeInsets.only(left: leftPadding),
      width: width,
      child: Flex(
        direction: wrapAxis ?? Axis.horizontal,
        crossAxisAlignment: wrapAxis == Axis.vertical
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: titleWidth,
            child: title,
          ),
          SizedBox(
            width: rightPadding,
            height: wrapAxis == Axis.vertical ? 5 : 0,
          ),
          field != null && fieldDefaultWidth != null
              ? SizedBox(
                  width: wrapAxis == Axis.vertical
                      ? width - 50
                      : min(fieldWidth, fieldDefaultWidth!),
                  child: field!,
                )
              : SizedBox(
                  width: wrapAxis == Axis.vertical
                      ? width - 50
                      : width - titleWidth - leftPadding - rightPadding - 20,
                  child: field ??
                      (fields != null
                          ? Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              runSpacing: 5,
                              children: fields!.toList(),
                            )
                          : const Text(
                              'No Field',
                            )),
                ),
        ],
      ),
    );
  }
}
