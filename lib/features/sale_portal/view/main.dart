import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/features/buy_sell_portal/view/main.dart';

import '../../../utils/index.dart';
import '../../widgets/index.dart';

class SalePortalMain extends StatelessWidget {
  const SalePortalMain({super.key});

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
                      'Sale Deal: (Active)',
                      style: context.textTheme.titleSmall
                          ?.apply(color: context.colorScheme.onSecondary),
                    ),
                  ],
                ),
              ),
              FormSection(
                title: const Text('Our Number:'),
                field: Row(
                  children: [
                    Text(
                      'CHEVR23TB004',
                      style: context.textTheme.titleMedium,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('In-House'),
                      ],
                    ),
                  ],
                ),
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
                fieldDefaultWidth: 180,
                title: const Text('Create Date:'),
                field: DateTimePicker(
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
                fieldDefaultWidth: 150,
                title: const Text('Trade Date:'),
                field: CustomDatePicker(
                  onSaved: (val) {},
                  defaultValue: DateTime.now(),
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
                    baseColor: Colors.blue,
                    letter: 'D',
                    isSelected: true,
                    title: '1: RBOB at WRI - IL (KINDER)',
                  ),
                ],
                form: SalePortalSideForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalePortalSideForm extends StatelessWidget {
  const SalePortalSideForm({super.key});

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
                '1: RBOB at WRI - IL (KINDER)',
                style: context.textTheme.titleSmall
                    ?.apply(color: context.colorScheme.onSecondary),
              ),
            ],
          ),
        ),
        FormSection(
          defaultWidth: major,
          title: const Text('Delivery of:'),
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
          title: const Text('Approx. Quantity'),
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
          title: const Text('Vessel:'),
          field: CustomDropDown(
            dropItems: const ['(Empty)'],
            onSaved: (val) {},
          ),
        ),
        FormSection(
          fieldDefaultWidth: 350,
          defaultWidth: major,
          title: const Text('Control:'),
          field: NormalTextField(onSaved: (val) {}),
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
          fieldDefaultWidth: 200,
          defaultTitleWidth: 160,
          title: const Text('Supply/Demand Region:'),
          field: CustomDropDown(
            dropItems: const ['010GC', '020GP', '030GP', '040BI', '045RI'],
            onSaved: (val) {},
            defaultValue: '010GC',
          ),
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
        CurrentPricingTable(
          defaultWidth: width,
          data: [
            CurrentPricingModel(
              provision: 'FORMULA TABLET',
              directions: 'Receive',
              fromDate: '11/1/2023',
              toDate: '11/1/2023',
              provisionUsage: 'Actual and Estimate',
              product: 'RBOB',
              currency: 'USD',
              type: 'Primary',
              uom: 'gal',
              status: 'Active',
            ),
          ],
        ),
        ProvisionInfo(
          width: width,
          dealDirection: 'Receive',
          tableToDisplay: FormulaTablet(width: width),
        ),
      ],
    );
  }
}
