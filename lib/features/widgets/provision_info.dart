import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/features/buy_sell_portal/view/main.dart';
import 'form_fields/custom_dropdown.dart';
import 'form_fields/custom_date_picker.dart';

import '../../utils/index.dart';
import 'form_section.dart';

class ProvisionInfo extends StatelessWidget {
  final String dealDirection;
  final Widget tableToDisplay;

  const ProvisionInfo({
    super.key,
    required this.width,
    required this.dealDirection,
    required this.tableToDisplay,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.secondary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction: context.screenWidth < smallDesktopScreenBreakpoint
                ? Axis.vertical
                : Axis.horizontal,
            crossAxisAlignment:
                context.screenWidth < smallDesktopScreenBreakpoint
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    'Provision information',
                    style: context.textTheme.titleMedium,
                  ),
                  const ProvisionInfoButton(
                    title: 'CBOB',
                    defaultWidth: 75,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'in',
                    ),
                  ),
                  const ProvisionInfoButton(
                    title: 'USD',
                    defaultWidth: 65,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'per',
                    ),
                  ),
                  const ProvisionInfoButton(
                    title: 'gal',
                    defaultWidth: 55,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTextStyle(
                style: context.textTheme.titleSmall!.apply(color: linkColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        LoadingScreen.instance()
                            .show(context: context, text: 'Loading...');
                      },
                      child: const Text('Profile...'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () async {},
                      child: const Text('Edit Text...'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text('Extended Information...'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          FormSection(
            leftPadding: 0,
            defaultWidth: width - 30,
            title: ProvisionInfoButton(title: dealDirection, defaultWidth: 50),
            fields: [
              CustomDropDown(
                width: 250,
                dropItems: const ['CHEVRON', '(Empty)', 'Spot'],
                defaultValue: 'CHEVRON',
                isEnable: false,
                onSaved: (val) {},
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      'Usage:',
                    ),
                  ),
                  CustomDropDown(
                    width: 200,
                    dropItems: const [
                      'Actual and Estimate',
                      '(Empty)',
                      'Yes',
                    ],
                    defaultValue: 'Actual and Estimate',
                    onSaved: (val) {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          FormSection(
            leftPadding: 0,
            defaultWidth: width - 30,
            title: const Text('Effective:'),
            fields: [
              CustomDatePicker(onSaved: (date) {}),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('to'),
              ),
              CustomDatePicker(onSaved: (date) {}),
            ],
          ),
          tableToDisplay,
        ],
      ),
    );
  }
}
