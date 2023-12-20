import 'package:flutter/material.dart';
import '../../../utils/index.dart';

class DealDetails extends StatelessWidget {
  final Iterable<SideTab> tabs;
  final Widget form;

  const DealDetails({
    super.key,
    required this.tabs,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      // decoration: BoxDecoration(border: Border(top: BorderSide())),
      child: Flex(
        direction: context.screenWidth < smallDesktopScreenBreakpoint
            ? Axis.vertical
            : Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   // height: double.infinity,
          //   decoration: const BoxDecoration(
          //     border: Border(
          //       top: BorderSide(),
          //     ),
          //   ),
          //   alignment: Alignment.topLeft,
          //   child: SingleChildScrollView(
          //     scrollDirection:
          //         context.screenWidth < smallDesktopScreenBreakpoint
          //             ? Axis.horizontal
          //             : Axis.vertical,
          //     child: Flex(
          //       direction: context.screenWidth < smallDesktopScreenBreakpoint
          //           ? Axis.horizontal
          //           : Axis.vertical,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: tabs.toList(),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: context.screenWidth < smallDesktopScreenBreakpoint ? 0 : 1,
            child: Container(
              // width: double.infinity,
              // height: 500,
              decoration: BoxDecoration(
                // color: Colors.amber,
                border: Border(
                  top: const BorderSide(),
                  left: context.screenWidth > smallDesktopScreenBreakpoint
                      ? const BorderSide()
                      : const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                ),
              ),
              child: form,
            ),
          ),
        ],
      ),
    );
  }
}

class SideTab extends StatelessWidget {
  final MaterialColor baseColor;
  final String letter;
  final String title;
  final bool isSelected;

  const SideTab({
    super.key,
    required this.baseColor,
    required this.letter,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.transparent,
      textStyle: context.textTheme.titleSmall,
      color: isSelected ? context.colorScheme.secondaryContainer : null,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 8),
                child: Container(
                  padding: const EdgeInsets.all(1),
                  width: 26,
                  height: 26,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: baseColor.shade100,
                    border: Border.all(
                      color: baseColor.shade700,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    letter,
                    style: context.textTheme.titleMedium?.apply(
                      color: baseColor.shade700,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  maxLines: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
