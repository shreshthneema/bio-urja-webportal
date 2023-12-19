import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool expand;
  final double fontSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final double borderRadius;
  final IconData? icon;
  final Widget? child;
  final TextStyle? defaultTextStyle;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.expand = false,
    this.fontSize = 24,
    this.paddingVertical = 10,
    this.paddingHorizontal = 30,
    this.borderRadius = 8,
    this.icon,
    this.child,
    this.defaultTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = defaultTextStyle ??
        Theme.of(context).textTheme.titleMedium!.apply(
              color: Theme.of(context).colorScheme.onPrimary,
            );

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      minimumSize: expand ? Size(double.infinity, 0) : null,
      elevation: 2,
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: paddingHorizontal,
      ),
      backgroundColor: Theme.of(context).buttonTheme.colorScheme?.primary,
    );
    return icon != null
        ? ElevatedButton.icon(
            onPressed: onTap,
            icon: Icon(
              icon,
              color: Colors.white,
              size: fontSize,
            ),
            style: buttonStyle,
            label: Text(
              title,
              style: textStyle,
            ),
          )
        : ElevatedButton(
            onPressed: onTap,
            style: buttonStyle,
            child: child ??
                Text(
                  title,
                  style: textStyle,
                ),
          );
  }
}
