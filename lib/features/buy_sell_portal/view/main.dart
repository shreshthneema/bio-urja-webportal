import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/index.dart';
import '../../widgets/index.dart';

class BuySellPortalMain extends StatelessWidget {
  const BuySellPortalMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BaseLayout(
        child: DefaultTextStyle(
          style: context.textTheme.titleSmall!,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 10,
            children: [
              Container(
                color: context.colorScheme.secondary,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Buy/Sell Deal: (Active)',
                      style: context.textTheme.titleSmall
                          ?.apply(color: context.colorScheme.onSecondary),
                    ),
                  ],
                ),
              ),
              const FormSection(
                title: Text('Our Number:'),
                field: Text('CHEVR23TB004'),
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
                field: CustomDropDown(
                  dropItems: const [
                    'Evergreen',
                    'Spot',
                    'Term',
                    'Term Evergreen',
                  ],
                  defaultValue: 'Evergreen',
                  onSaved: (val) {},
                ),
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
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          'Text Bottom:',
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
                    title: const Text('Company'),
                    // fieldWidth: width - leftPadding - 180,
                    field: CustomDropDown(
                      dropItems: const ['(Empty)', 'CHEVRON - Trading'],
                      onSaved: (val) {},
                      isEnable: false,
                      defaultValue: 'CHEVRON - Trading',
                    ),
                  ),
                  FieldSetModel(
                    title: const Text('Contact'),
                    // fieldWidth: width - leftPadding - 180,
                    field: CustomDropDown(
                      dropItems: const [
                        'Ian Waring',
                        'Jeff Huck',
                        'Jim Frick',
                        'JoshRogers',
                        'Keth Malazdrewicz',
                        'Kyle Finn',
                        'Matt Brewer',
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
                    title: const Text('Division'),
                    // fieldWidth: width - leftPadding - 180,
                    field: CustomDropDown(
                      dropItems: const ['(Empty)', 'BIOURJA TRADDING, LLC'],
                      onSaved: (val) {},
                      isEnable: false,
                      defaultValue: 'BIOURJA TRADDING, LLC',
                    ),
                  ),
                  FieldSetModel(
                    title: const Text('Trader'),
                    // fieldWidth: width - leftPadding - 180,
                    field: CustomDropDown(
                      dropItems: const [
                        'GirishUpadhyaya',
                        'Iliya Naydenov',
                        'James Hangyal',
                        'Jen Piper',
                        'Joe Beck',
                        'Joe Park',
                        'Keyur Shah',
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
                  ),
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
                fieldDefaultWidth: 700,
                defaultWidth: context.screenWidth,
                title: const Text('Comments'),
                field: NormalTextField(onSaved: (val) {}),
              ),
              const DealDetails(
                tabs: [
                  SideTab(
                    baseColor: Colors.yellow,
                    letter: 'R',
                    isSelected: true,
                    title: '1: A3 (Colonial) (CBOB) at PDA - TX (COLONIAL P/L)',
                  ),
                  SideTab(
                    baseColor: Colors.blue,
                    letter: 'D',
                    isSelected: false,
                    title: '2: A3 (Colonial) (CBOB) at PDA - TX (COLONIAL P/L)',
                  ),
                ],
                form: SideForm(),
              ),
            ],
          ),
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
    double width = context.screenWidth < smallDesktopScreenBreakpoint
        ? context.screenWidth
        : context.screenWidth - 200;

    double major =
        context.isMobileScreen || context.isTabletScreen ? width : width * 0.59;

    double minor =
        context.isMobileScreen || context.isTabletScreen ? width : width * 0.4;

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
          field: CustomDropDown(
            dropItems: const [
              'KM STL BULK',
              'KM STL RACK',
              'MIDWEST BULK',
              'MIDWEST RACK',
              'RACK',
              'SPECULATIVE',
              'STORAGE',
            ],
            onSaved: (val) {},
            defaultValue: 'KM STL BULK',
          ),
        ),
        FormSection(
          defaultWidth: major,
          defaultTitleWidth: 145,
          title: const ProvisionInfoButton(
            title: 'Approx. Quantity',
            defaultWidth: 150,
          ),
          fields: [
            SizedBox(
              width: 100,
              child: NormalTextField(
                onSaved: (val) {},
                defaultValue: '25000.00',
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
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
              'Wire1-BizDFromLift',
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
          fieldDefaultWidth: 350,
          defaultWidth: major,
          title: const Text('Control:'),
          field: NormalTextField(onSaved: (val) {}),
        ),
        FormSection(
          defaultWidth: minor,
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
              'TRUCK',
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
              width: 220,
              dropItems: const [
                'Free on Board',
                'Cost and Freight',
                'Cost,Insurance and Freight',
                'Carriage Paid To',
                'Carriage and Insurance Paid To',
                'Delivered at Place',
                'Delivered EX Ship',
                'Delivered EX Quay (Duty Paid)',
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
              width: 220,
              dropItems: const [
                'Free on Board',
                'Cost and Freight',
                'Cost,Insurance and Freight',
                'Carriage Paid To',
                'Carriage and Insurance Paid To',
                'Delivered at Place',
                'Delivered EX Ship',
                'Delivered EX Quay (Duty Paid)',
              ],
              onSaved: (val) {},
              defaultValue: 'Free on Board',
            ),
          ],
        ),
        FormSection(
          defaultWidth: minor,
          title: const Text('Carrier:'),
          field: CustomDropDown(
            // width: 200,
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
              width: 200,
              dropItems: const [
                'PDA-TX (COLONIAL P/L)',
                'PDA TX (EXPLORER P/L)',
                'PHI-PA (BUCKEYE P/L)',
                'PLJ-AL (COLONIAL P/L)',
                'PRD NJ (COLONIAL P/L)',
                'PSD-GA (COLONIAL P/L)',
                'PTN TX (EXPLORER P/L)',
                'RCH-MN (MAG)',
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
              width: 200,
              dropItems: const [
                'PDA-TX (COLONIAL P/L)',
                'PDA TX (EXPLORER P/L)',
                'PHI-PA (BUCKEYE P/L)',
                'PLJ-AL (COLONIAL P/L)',
                'PRD NJ (COLONIAL P/L)',
                'PSD-GA (COLONIAL P/L)',
                'PTN TX (EXPLORER P/L)',
                'RCH-MN (MAG)',
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
        CurrentPricingTable(
          defaultWidth: width,
          data: [
            CurrentPricingModel(
              provision: 'FIXED PRICE PURCHASE BULK',
              directions: 'Pay',
              fromDate: '10/01/2023',
              toDate: '10/31/2023',
              provisionUsage: 'Actual and Estimate',
              product: 'CBOB',
              currency: 'USD',
              type: 'Primary	',
              uom: 'gal',
              status: 'Active',
            ),
            CurrentPricingModel(
              provision: 'Broker Commission',
              directions: 'Pay',
              fromDate: '10/01/2023',
              toDate: '10/31/2023',
              provisionUsage: 'Actual and Estimate',
              product: 'CBOB',
              currency: 'USD',
              type: 'Secondary',
              uom: 'gal',
              status: 'Inactive',
            ),
          ],
        ),
        ProvisionInfo(
          width: width,
          dealDirection: 'Pay',
          tableToDisplay: const FixedPriceTable(),
        ),
      ],
    );
  }
}

class FixedPriceTable extends StatelessWidget {
  const FixedPriceTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: CustomTable(
        columnWidths: const {
          0: FixedColumnWidth(20),
          1: FlexColumnWidth(1),
        },
        minWidth: 250,
        maxHeight: 100,
        defaultWidth: 250,
        tableHeaderTitles: const ['>', 'FixedPrice'],
        dataList: [
          [
            CellData(string: ''),
            CellData(
              widget: const Text(
                '2.177500000',
                textAlign: TextAlign.right,
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class FormulaTablet extends StatelessWidget {
  const FormulaTablet({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width - 20,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.secondary,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            style: context.textTheme.titleSmall!
                .apply(color: context.colorScheme.onSecondary),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
              color: context.colorScheme.secondary,
              child: const Row(
                children: [
                  Text('>'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Formula Tablet 1'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Wrap(
              runSpacing: 5,
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: context.screenWidth > tabletScreenBreakpoint
                        ? 300
                        : 420,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 60,
                        child: NormalTextField(
                          onSaved: (val) {},
                          textAlign: TextAlign.right,
                          defaultValue: '100.0',
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '%',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Curve:',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomDropDown(
                          dropItems: const ['PLATTS'],
                          onSaved: (val) {},
                          defaultValue: 'PLATTS',
                        ),
                      ),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: context.screenWidth > tabletScreenBreakpoint
                        ? 300
                        : 420,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomDropDown(
                          dropItems: const ['RBOB @ GULF COAST PIPE'],
                          onSaved: (val) {},
                          defaultValue: 'RBOB @ GULF COAST PIPE',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomDropDown(
                        width: 100,
                        dropItems: const ['Average'],
                        onSaved: (val) {},
                        defaultValue: 'Average',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Adjustments...',
                          style: context.textTheme.titleSmall
                              ?.apply(color: linkColor),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('USD/gal'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
            child: Wrap(
              runSpacing: 5,
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  // width: 460,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                        child: NormalTextField(
                          onSaved: (val) {},
                          textAlign: TextAlign.right,
                          defaultValue: '0.11',
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text('+-'),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Dates:',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomDropDown(
                          dropItems: const ['Custom'],
                          onSaved: (val) {},
                          defaultValue: 'Custom',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomDropDown(
                          dropItems: const ['Spot'],
                          onSaved: (val) {},
                          defaultValue: 'Spot',
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Rules...',
                          style: context.textTheme.titleSmall
                              ?.apply(color: linkColor),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('FX Rules...'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        ),
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
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Icon(
                CupertinoIcons.chevron_up_chevron_down,
                size: 12,
                color: context.colorScheme.primary,
              ),
            ),
          ],
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
