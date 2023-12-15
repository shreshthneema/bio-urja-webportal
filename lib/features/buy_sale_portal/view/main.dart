import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/features/widgets/custom_dropdown.dart';
import 'package:webportal_biourja_flutter/features/widgets/normal_textfield.dart';
import 'package:webportal_biourja_flutter/utils/constants/screen_breakpoints.dart';
import '../../../features/widgets/custom_date_picker.dart';
import '../../../utils/extensions/build_context_ext.dart';

import '../../widgets/base_layout.dart';

class BuySalePortalMain extends StatelessWidget {
  const BuySalePortalMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BaseLayout(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          runSpacing: 10,
          children: [
            Container(
              color: context.colorScheme.secondary,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Buy/Sell: (Active)',
                    style: context.textTheme.titleSmall
                        ?.apply(color: context.colorScheme.onSecondary),
                  ),
                ],
              ),
            ),
            const FormSection(
              title: Text("Our Number:"),
              field: Text("CHEVR23TB004"),
            ),
            FormSection(
              title: const Text('Effective Date:'),
              fields: [
                CustomDatePicker(onSaved: (date) {}),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('to'),
                ),
                CustomDatePicker(onSaved: (date) {}),
              ],
            ),
            FormSection(
              title: const Text('Term:'),
              fieldDefaultWidth: 200,
              field: CustomDropDown(dropItems: const [
                'Evergreen',
                'Spot',
                'Term',
                'Term Evergreen'
              ], defaultValue: 'Evergreen', onSaved: (val) {}),
            ),
            FormSection(
              title: const Text('Print Using:'),
              fields: [
                CustomDropDown(
                  width: 150,
                  dropItems: const ['Our Paper', '(Empty)', 'Spot'],
                  defaultValue: 'Our Paper',
                  onSaved: (val) {},
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: Text(
                        'Text Bottom:',
                        style: context.textTheme.titleSmall,
                      ),
                    ),
                    CustomDropDown(
                      width: 100,
                      dropItems: const ['No', '(Empty)', 'Yes'],
                      defaultValue: 'No',
                      onSaved: (val) {},
                    ),
                  ],
                ),
              ],
            ),
            FieldSet(
              title: 'Their Company',
              fields: [
                FieldSetModel(
                  title: const Text("Company"),
                  // fieldWidth: width - leftPadding - 180,
                  field: CustomDropDown(
                    dropItems: const ["(Empty)", "CHEVRON - Trading"],
                    onSaved: (val) {},
                    isEnable: false,
                    defaultValue: 'CHEVRON - Trading',
                  ),
                ),
                FieldSetModel(
                  title: const Text("Contact"),
                  // fieldWidth: width - leftPadding - 180,
                  field: CustomDropDown(
                    dropItems: const [
                      "Ian Waring",
                      'Jeff Huck',
                      'Jim Frick',
                      'JoshRogers',
                      'Keth Malazdrewicz',
                      'Kyle Finn',
                      'Matt Brewer'
                    ],
                    onSaved: (val) {},
                    defaultValue: 'Jeff Huck',
                  ),
                ),
              ],
            ),
            FieldSet(
              title: 'Our Company',
              fields: [
                FieldSetModel(
                  title: const Text("Division"),
                  // fieldWidth: width - leftPadding - 180,
                  field: CustomDropDown(
                    dropItems: const ["(Empty)", "BIOURJA TRADDING, LLC"],
                    onSaved: (val) {},
                    isEnable: false,
                    defaultValue: 'BIOURJA TRADDING, LLC',
                  ),
                ),
                FieldSetModel(
                  title: const Text("Trader"),
                  // fieldWidth: width - leftPadding - 180,
                  field: CustomDropDown(
                    dropItems: const [
                      "GirishUpadhyaya",
                      'Iliya Naydenov',
                      'James Hangyal',
                      'Jen Piper',
                      'Joe Beck',
                      'Joe Park',
                      'Keyur Shah'
                    ],
                    onSaved: (val) {},
                    defaultValue: 'Iliya Naydenov',
                  ),
                ),
              ],
            ),
            FormSection(
              title: const Text('Write-off Balance:'),
              fields: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  width: 120,
                  child: NormalTextField(
                    onSaved: (val) {},
                    defaultValue: '25000.00',
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                  ),
                ),
                CustomDropDown(
                  width: 180,
                  dropItems: const ['(Empty)'],
                  onSaved: (val) {},
                  defaultValue: '(Empty)',
                )
              ],
            ),
            FormSection(
              fieldDefaultWidth: 250,
              title: const Text('Balance Clause:'),
              field: CustomDropDown(
                dropItems: const ['(Empty)'],
                onSaved: (val) {},
                defaultValue: '(Empty)',
              ),
            ),
            FormSection(
              fieldDefaultWidth: 120,
              title: const Text('Trade Date:'),
              field: CustomDatePicker(
                onSaved: (val) {},
                defaultValue: DateTime.now(),
              ),
            ),
            FormSection(
              fieldDefaultWidth: 250,
              title: const Text('Master Aggrement:'),
              field: CustomDropDown(
                dropItems: const ['(Empty)'],
                onSaved: (val) {},
                defaultValue: '(Empty)',
              ),
            ),
            FormSection(
              fieldDefaultWidth: 500,
              defaultWidth: context.screenWidth,
              title: const Text('Comments'),
              field: NormalTextField(onSaved: (val) {}),
            ),
            Container(
              width: double.infinity,
              // padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              // decoration: BoxDecoration(border: Border(top: BorderSide())),
              child: Flex(
                direction: context.isMobileScreen || context.isTabletScreen
                    ? Axis.vertical
                    : Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: double.infinity,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      scrollDirection:
                          context.isMobileScreen || context.isTabletScreen
                              ? Axis.horizontal
                              : Axis.vertical,
                      child: Flex(
                        direction:
                            context.isMobileScreen || context.isTabletScreen
                                ? Axis.horizontal
                                : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SideTab(
                            baseColor: Colors.yellow,
                            letter: 'R',
                            isSelected: true,
                            title:
                                '1: A3 (Colonial) (CBOB) at PDA - TX (COLONIAL P/L)',
                          ),
                          SideTab(
                            baseColor: Colors.blue,
                            letter: 'D',
                            isSelected: false,
                            title:
                                '2: A3 (Colonial) (CBOB) at PDA - TX (COLONIAL P/L)',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: !context.isMobileScreen && !context.isTabletScreen
                        ? 1
                        : 0,
                    child: Container(
                      // width: double.infinity,
                      // height: 500,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border(
                          top: const BorderSide(),
                          left:
                              !context.isMobileScreen && !context.isTabletScreen
                                  ? const BorderSide()
                                  : const BorderSide(
                                      width: 0,
                                      color: Colors.transparent,
                                    ),
                        ),
                      ),
                      child: const SideForm(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideForm extends StatelessWidget {
  const SideForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = context.isMobileScreen || context.isTabletScreen
        ? context.screenWidth
        : context.screenWidth - 200;

    double major = context.isMobileScreen ||
            context.isTabletScreen ||
            context.isSmallDesktopScreen
        ? width
        : width * 0.57;

    double minor = context.isMobileScreen ||
            context.isTabletScreen ||
            context.isSmallDesktopScreen
        ? width
        : width * 0.42;
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      runSpacing: 10,
      children: [
        Container(
          color: context.colorScheme.secondary,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            children: [
              Text(
                '1: A3 (Colonial) (CBOB) at PDA - TX (COLONIAL P/L)',
                style: context.textTheme.titleSmall
                    ?.apply(color: context.colorScheme.onSecondary),
              ),
            ],
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Receipt of:'),
          fields: [
            CustomDropDown(
              width: 100,
              dropItems: const ['(Empty)', 'Rack', 'Ethanol', 'Bulk'],
              onSaved: (val) {},
              defaultValue: 'Bulk',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 180,
              dropItems: const [
                'A3 (Colonial)',
                'A4 (Colonial)',
                'A5 (Colonial)',
                'A6 (Colonial)',
                'A7 (Colonial)',
                'A8 (Colonial)',
                'A9 (Colonial)',
                'A19 (Colonial)',
                'A20 (Colonial)',
                'A2(Colonial)',
                'A1olonial)',
                'A1Clonial)',
                'A19onial)',
                'A19onial)',
                'A19lonial)',
                'A19onial)',
                'A19nial)',
                'A19fonial)',
                'A19fflonial)',
                'A19lffonial)',
                'A19lofnial)',
                'A19olonial)',
                'A19(Colonial)',
              ],
              onSaved: (val) {},
              defaultValue: 'A3 (Colonial)',
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          title: const Text('Strategy:'),
          field: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDropDown(
                width: 150,
                dropItems: const [
                  'KM STL BULK',
                  'KM STL RACK',
                  'MIDWEST BULK',
                  'MIDWEST RACK',
                  'RACK',
                  'SPECULATIVE',
                  'STORAGE'
                ],
                onSaved: (val) {},
                defaultValue: 'KM STL BULK',
              ),
            ],
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Approx. Quantity'),
          fields: [
            SizedBox(
              width: 100,
              child: NormalTextField(
                onSaved: (val) {},
                defaultValue: '25000.00',
                keyboardType: TextInputType.number,
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 100,
              dropItems: const ['bbl', 'gal'],
              onSaved: (val) {},
              defaultValue: 'bbl',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 110,
              dropItems: const ['Per Month', 'gal'],
              onSaved: (val) {},
              defaultValue: 'Per Month',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 110,
              dropItems: const ['By Month', 'gal'],
              onSaved: (val) {},
              defaultValue: 'By Month',
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          fieldDefaultWidth: 200,
          title: const Text('Payment Terms:'),
          field: CustomDropDown(
            dropItems: const [
              'W2-BizDFromInvDat',
              'WB',
              'Wire0-BizDFromInvDat',
              'Wire0-BizDFromLift',
              'Wire 10-BizDFromLift',
              'Wire10-CalDFromLift',
              'Wire10-CalDFromROI',
              'Wire1-BizDFromLift'
            ],
            onSaved: (val) {},
            defaultValue: 'W2-BizDFromInvDat',
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Tolerance:'),
          fields: [
            CustomDropDown(
              width: 130,
              dropItems: const ['bbl', 'gal'],
              onSaved: (val) {},
              defaultValue: 'bbl',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 130,
              dropItems: const ['Per Month', 'gal'],
              onSaved: (val) {},
              defaultValue: 'Per Month',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 100,
              dropItems: const ['By', 'gal'],
              onSaved: (val) {},
              defaultValue: 'By',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            Text(
              'bbl',
              style: context.textTheme.bodyLarge,
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          title: const Text('Effective Date:'),
          fields: [
            CustomDatePicker(onSaved: (date) {}),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('to'),
            ),
            CustomDatePicker(onSaved: (date) {}),
          ],
        ),
        FormSection(
          defaultWidth: major,
          fieldDefaultWidth: 200,
          title: const Text('Control:'),
          field: NormalTextField(onSaved: (val) {}),
        ),
        FormSection(
          defaultWidth: minor,
          fieldDefaultWidth: 200,
          title: const Text('Method:'),
          field: CustomDropDown(
            dropItems: const [
              'BARGE',
              'BOOK TRANSFER',
              'PIPELINE',
              'PTO',
              'RAILCAR',
              'STOCK TRANSFER',
              'TANK TRANSFER',
              'TRUCK'
            ],
            onSaved: (val) {},
            defaultValue: 'PIPELINE',
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Title Transfer:'),
          fields: [
            CustomDropDown(
              width: 200,
              dropItems: const [
                'Free on Board',
                'Cost and Freight',
                'Cost,Insurance and Freight',
                'Carriage Paid To',
                'Carriage and Insurance Paid To',
                'Delivered at Place',
                'Delivered EX Ship',
                'Delivered EX Quay (Duty Paid)'
              ],
              onSaved: (val) {},
              defaultValue: 'Free on Board',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            const Text('at'),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 180,
              dropItems: const [
                'Free on Board',
                'Cost and Freight',
                'Cost,Insurance and Freight',
                'Carriage Paid To',
                'Carriage and Insurance Paid To',
                'Delivered at Place',
                'Delivered EX Ship',
                'Delivered EX Quay (Duty Paid)'
              ],
              onSaved: (val) {},
              defaultValue: 'Free on Board',
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          fieldDefaultWidth: 250,
          title: const Text('Carrier:'),
          field: CustomDropDown(
            width: 250,
            dropItems: const [
              'COLONIAL PIPELINE',
              'COLONIAL TRANSPORT INC',
              'COMMERCIAL LUBRICATO',
              'CONESTOGA TRANSPORT LLC',
              'CONSOLIDATED TRUCKING INC',
              'CONSUMERS COOPERATIVE SOCIETY',
              'CONSUMERS PETRO',
            ],
            onSaved: (val) {},
            defaultValue: 'COLONIAL PIPELINE',
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Location:'),
          fields: [
            CustomDropDown(
              width: 180,
              dropItems: const [
                'PDA-TX (COLONIAL P/L)',
                'PDA TX (EXPLORER P/L)',
                'PHI-PA (BUCKEYE P/L)',
                'PLJ-AL (COLONIAL P/L)',
                'PRD NJ (COLONIAL P/L)',
                'PSD-GA (COLONIAL P/L)',
                'PTN TX (EXPLORER P/L)',
                'RCH-MN (MAG)'
              ],
              onSaved: (val) {},
              defaultValue: 'PDA-TX (COLONIAL P/L)',
            ),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            const Text('at'),
            const SizedBox(
              width: 5,
              height: 10,
            ),
            CustomDropDown(
              width: 180,
              dropItems: const [
                'PDA-TX (COLONIAL P/L)',
                'PDA TX (EXPLORER P/L)',
                'PHI-PA (BUCKEYE P/L)',
                'PLJ-AL (COLONIAL P/L)',
                'PRD NJ (COLONIAL P/L)',
                'PSD-GA (COLONIAL P/L)',
                'PTN TX (EXPLORER P/L)',
                'RCH-MN (MAG)'
              ],
              onSaved: (val) {},
              defaultValue: 'PDA-TX (COLONIAL P/L)',
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          fieldDefaultWidth: 200,
          title: const Text('Pipeline Cycle:'),
          field: CustomDropDown(
            dropItems: const ['59th', '60th'],
            onSaved: (val) {},
            defaultValue: '59th',
          ),
        ),
        FormSection(
          defaultWidth: major,
          fieldDefaultWidth: 200,
          defaultTitleWidth: 160,
          title: const Text('Supply/Demand Region:'),
          field: CustomDropDown(
            dropItems: const ['010GC', '020GP', '030GP', '040BI', '045RI'],
            onSaved: (val) {},
            defaultValue: '010GC',
          ),
        ),
        PaymentFormulaTable(defaultWidth: width),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: width,
            decoration: BoxDecoration(
              border: Border.all(color: context.colorScheme.secondary),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'in',
                            style: context.textTheme.titleSmall,
                          ),
                        ),
                        const ProvisionInfoButton(
                          title: 'USD',
                          defaultWidth: 65,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'per',
                            style: context.textTheme.titleSmall,
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
                      style: context.textTheme.titleSmall!
                          .apply(color: Colors.blue.shade900),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Text('Profile...'),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
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
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                FormSection(
                  defaultWidth: width - 30,
                  title: const Text('Pay:'),
                  fields: [
                    CustomDropDown(
                      width: 250,
                      dropItems: const ['CHEVRON', '(Empty)', 'Spot'],
                      defaultValue: 'CHEVRON',
                      onSaved: (val) {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Text(
                            'Usage:',
                            style: context.textTheme.titleSmall,
                          ),
                        ),
                        CustomDropDown(
                          width: 200,
                          dropItems: const [
                            'Actual and Estimate',
                            '(Empty)',
                            'Yes'
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
                const SizedBox(
                  height: 10,
                ),
              ],
            ))
      ],
    );
  }
}

class ProvisionInfoButton extends StatelessWidget {
  final String title;
  final double defaultWidth;

  const ProvisionInfoButton({
    super.key,
    required this.title,
    required this.defaultWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultWidth,
      height: 30,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title),
            Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.all(1),
                height: 15.5,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: context.colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                child: Icon(
                  CupertinoIcons.chevron_up_chevron_down,
                  size: 12,
                  color: context.colorScheme.primary,
                )),
          ],
        ),
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
                      borderRadius: BorderRadius.circular(100)),
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
                  style: context.textTheme.titleSmall,
                  maxLines: null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentFormulaTable extends StatelessWidget {
  final double defaultWidth;

  const PaymentFormulaTable({super.key, required this.defaultWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: defaultWidth - 22,
          constraints: const BoxConstraints(minWidth: 950, maxHeight: 100),
          decoration: BoxDecoration(
              border: Border.all(color: context.colorScheme.secondary)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Table(
              border: TableBorder.symmetric(
                  outside: BorderSide(color: context.colorScheme.secondary)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FixedColumnWidth(20), // index
                1: FlexColumnWidth(1), // Current Pricing Provisions
                2: FixedColumnWidth(80), // Direction
                3: FixedColumnWidth(85), // From Date
                4: FixedColumnWidth(85), //To Date
                5: FixedColumnWidth(140), // Provision Usage
                6: FixedColumnWidth(65), // Product
                7: FixedColumnWidth(70), //Currency
                8: FixedColumnWidth(60), //Type
                9: FixedColumnWidth(50), //UOM
                10: FixedColumnWidth(50), // Status
              },
              // border: TableBorder.all(color: Colors.black),

              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: context.colorScheme.secondary,
                    ),
                    children: [
                      TableCell(
                        child: Text(
                          '>.',
                          style: context.textTheme.titleMedium
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Current Pricing Provisions (1 active)',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Directions',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'From Date',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'To Date',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Provision Usage',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Product',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Currency',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Type',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'UOM',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Status',
                          style: context.textTheme.titleSmall
                              ?.apply(color: context.colorScheme.onSecondary),
                        ),
                      ),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    children: const [
                      TableCell(child: Text('')),
                      TableCell(child: Text('FIXED PRICE PURCHASE BULK')),
                      TableCell(child: Text('Pay')),
                      TableCell(child: Text('10/01/2023')),
                      TableCell(child: Text('10/31/2023')),
                      TableCell(child: Text('Actual and Estimate')),
                      TableCell(child: Text('CBOB')),
                      TableCell(child: Text('USD')),
                      TableCell(child: Text('Primary	')),
                      TableCell(child: Text('gal')),
                      TableCell(child: Text('Active'))
                    ]),
                const TableRow(
                  children: <Widget>[
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                  ],
                ),
                const TableRow(
                  children: <Widget>[
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TableCell extends StatelessWidget {
  final Widget child;
  final double verticalPadding;
  final double horizontalPadding;
  final TextStyle? textStyle;
  const TableCell({
    super.key,
    required this.child,
    this.verticalPadding = 4,
    this.horizontalPadding = 2,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style:
          context.textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w600),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        child: child,
      ),
    );
  }
}

class FormSection extends StatelessWidget {
  final Widget title;
  final Widget? field;
  final Iterable<Widget>? fields;
  final double? fieldDefaultWidth;
  final double? defaultWidth;
  final double maxWidthPercent;
  final double? defaultTitleWidth;

  const FormSection({
    super.key,
    required this.title,
    this.field,
    this.fields,
    this.fieldDefaultWidth,
    this.defaultWidth,
    this.maxWidthPercent = 0.5,
    this.defaultTitleWidth,
  });

  @override
  Widget build(BuildContext context) {
    final wrapAxis = context.isMobileScreen ? Axis.vertical : null;

    double width = defaultWidth ??
        (context.isMobileScreen || context.isTabletScreen
            ? context.screenWidth
            : context.screenWidth * maxWidthPercent);

    const double leftPadding = 20;
    const double rightPadding = 10;

    final double titleWidth =
        defaultTitleWidth ?? (context.isSmallDesktopScreen ? 90 : 130);

    final double fieldWidth =
        width - titleWidth - leftPadding - rightPadding - 20;

    return Container(
      padding: const EdgeInsets.only(left: leftPadding),
      width: width,
      child: Flex(
        direction: wrapAxis ?? Axis.horizontal,
        crossAxisAlignment: wrapAxis == Axis.vertical
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: titleWidth,
            child: DefaultTextStyle(
                style: context.textTheme.titleSmall!, child: title),
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

class FieldSetModel {
  final Widget title;
  final Widget field;

  FieldSetModel({required this.title, required this.field});
}

class FieldSet extends StatelessWidget {
  final String title;
  final List<FieldSetModel> fields;

  const FieldSet({super.key, required this.title, required this.fields});

  @override
  Widget build(BuildContext context) {
    double width = context.isMobileScreen || context.isTabletScreen
        ? context.screenWidth
        : context.screenWidth * 0.5;

    const double leftPadding = 20;

    width = width - leftPadding;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: leftPadding * 0.5),
      padding: const EdgeInsets.only(bottom: 10),
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
            color: context.colorScheme.secondary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: leftPadding * 0.5, vertical: 5),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: context.textTheme.titleMedium
                  ?.apply(color: context.colorScheme.secondary),
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ].extend(fields.map(
          (field) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: FormSection(
              defaultWidth: min(width - 30, 400),
              title: field.title,
              field: field.field,
            ),
          ),
        )),
      ),
    );
  }
}

extension ExtendField on List<Widget> {
  List<Widget> extend(Iterable<Widget> newWidgets) {
    for (var widget in newWidgets) {
      add(widget);
    }
    return this;
  }
}
