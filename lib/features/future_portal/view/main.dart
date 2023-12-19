import 'package:flutter/material.dart';
import '../../../utils/index.dart';
import '../../widgets/index.dart';

class FuturePortalMain extends StatelessWidget {
  const FuturePortalMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Focus.of(context).unfocus();
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
                      'Future : Canceled : ( Locked )',
                      style: context.textTheme.titleSmall
                          ?.apply(color: context.colorScheme.onSecondary),
                    ),
                  ],
                ),
              ),
              FormSection(
                title: Text('In-house Deal:'),
                field: Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              FormSection(
                title: Text('Our  Number:'),
                field: Text('MFUSA23PF00029-W'),
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
                title: const Text('Revivion Date:'),
                field: Text('7/21/2023 2:48 PM'),
              ),
              FieldSet(
                title: 'Broker Information',
                fields: [
                  FieldSetModel(
                    title: const Text('Clearing Broker:'),
                    field: CustomDropDown(
                      dropItems: ['MFUSA LLC - Financial'],
                      defaultValue: 'MFUSA LLC - Financial',
                      onSaved: (val) {},
                    ),
                  ),
                  FieldSetModel(
                    title: const Text('Floor Broker:'),
                    field: CustomDropDown(
                      dropItems: ['MFUSA LLC - Financial'],
                      defaultValue: 'MFUSA LLC - Financial',
                      onSaved: (val) {},
                    ),
                  ),
                  FieldSetModel(
                    title: const Text('Broker Account No:'),
                    field: CustomDropDown(
                      dropItems: ['523114444 - Center oil - KM STL'],
                      defaultValue: '523114444 - Center oil - KM STL',
                      onSaved: (val) {},
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
                  FieldSetModel(
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
                ],
              ),
              FormSection(
                fieldDefaultWidth: 700,
                defaultWidth: context.screenWidth,
                title: const Text('Comments'),
                field: NormalTextField(onSaved: (val) {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
