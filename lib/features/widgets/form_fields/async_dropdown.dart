import 'package:flutter/cupertino.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../../utils/index.dart';

typedef AsyncFunction = Future<List<String>> Function(String filter);

class AsyncDropDown extends StatelessWidget {
  final double? defaultWidth;
  final bool isEnable;
  final String? defaultValue;
  final double dropdownHeight;
  final String? Function(String?)? validator;
  final Function(String?)? onChange;
  final Function(String?) onSaved;
  final AsyncFunction asyncFunction;

  const AsyncDropDown({
    super.key,
    this.defaultWidth,
    this.isEnable = true,
    this.defaultValue,
    this.dropdownHeight = 300,
    this.validator,
    this.onChange,
    required this.onSaved,
    required this.asyncFunction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultWidth,
      child: Stack(
        children: [
          DropdownSearch<String>(
            asyncItems: asyncFunction,
            enabled: isEnable,
            selectedItem: defaultValue,
            onSaved: onSaved,
            onChanged: onChange,
            validator: validator,
            dropdownButtonProps: const DropdownButtonProps(
              isVisible: false,
              color: Colors.transparent,
            ),
            dropdownDecoratorProps: DropDownDecoratorProps(
              baseStyle: context.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
            popupProps: PopupProps.menu(
              constraints: BoxConstraints(
                maxHeight: dropdownHeight,
              ),
              showSearchBox: true,
              itemBuilder: (context, item, isSelected) => DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: context.textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 5,
            top: 3,
            child: Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }
}
