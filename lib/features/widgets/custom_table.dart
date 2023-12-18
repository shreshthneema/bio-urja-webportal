import 'package:flutter/material.dart';

class CellData {
  final String? string;
  final Widget? widget;

  CellData({this.string, this.widget});
}

class RowData {}

class CustomTable extends StatelessWidget {
  /// this is used to set width of table if not set it will remain null
  final double? defaultWidth;

  /// CustomTable is wrapped in [SingleChildScrollView].
  /// so it is needed to set a limit on horizontal expansion of table if table is very long
  final double minWidth;

  /// border color comes across table.
  /// used secondary color as border color if not defined
  final MaterialColor? borderColor;

  /// set width of each column as pr defined;
  final Map<int, TableColumnWidth>? columnWidths;

  /// List<String> to set headers
  final List<String> tableHeaderTitles;

  /// header row color if not defined set secondary color;
  final MaterialColor? headerBackgroundColor;

  /// set text style of header row
  /// default is [Theme.of(context).textTheme.titleSmall?.apply(color: Theme.of(context).colorScheme.onSecondary)]
  final TextStyle? headerTextStyle;

  /// set to make table with certain height height.
  /// [SingleChildScrollView] with scrollDirection [Axis.vertical] is use to show overflow row
  /// If not set height is defined max;
  final double? maxHeight;

  /// set text style of data row else set with default;
  final TextStyle? dataTextStyle;

  final List<List<CellData>> dataList;

  final void Function(int index)? onSelectRow;

  final int? isSelected;

  final double cellVerticalPadding;
  final double cellHorizontalPadding;
  final MaterialColor? selectRowColor;

  const CustomTable({
    super.key,
    this.defaultWidth,
    required this.minWidth,
    this.borderColor,
    this.columnWidths,
    required this.tableHeaderTitles,
    this.headerBackgroundColor,
    this.headerTextStyle,
    this.maxHeight,
    this.dataTextStyle,
    required this.dataList,
    this.onSelectRow,
    this.isSelected,
    this.selectRowColor,
    this.cellVerticalPadding = 6,
    this.cellHorizontalPadding = 2,
  });

  @override
  Widget build(BuildContext context) {
    Widget getCell(CellData cellData) {
      Widget cell = const Text("");

      if (cellData.widget != null) {
        cell = cellData.widget!;
      } else if (cellData.string != null) {
        cell = Text(
          cellData.string!,
          style: dataTextStyle ?? Theme.of(context).textTheme.titleSmall,
        );
      }

      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: cellHorizontalPadding + 2,
            vertical: cellVerticalPadding),
        child: cell,
      );
    }

    final dataTable = Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: columnWidths,
      children: onSelectRow != null
          ? dataList.asMap().entries.map((data) {
              return TableRow(
                children: data.value
                    .map(
                      (cellData) => InkWell(
                        onTap: onSelectRow != null
                            ? () => onSelectRow!(data.key)
                            : null,
                        child: ColoredBox(
                            color: isSelected != null && isSelected == data.key
                                ? selectRowColor ?? Colors.grey.shade300
                                : Theme.of(context).colorScheme.background,
                            child: getCell(cellData)),
                      ),
                    )
                    .toList(),
              );
            }).toList()
          : dataList.map((rowData) {
              return TableRow(
                children: rowData
                    .map(
                      (cellData) => getCell(cellData),
                    )
                    .toList(),
              );
            }).toList(),
    );

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: defaultWidth,
        constraints: BoxConstraints(minWidth: minWidth),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Theme.of(context).colorScheme.secondary,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Table(
              columnWidths: columnWidths,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: headerBackgroundColor ??
                        Theme.of(context).colorScheme.secondary,
                  ),
                  children: tableHeaderTitles
                      .map(
                        (title) => Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: cellVerticalPadding,
                            horizontal: cellHorizontalPadding,
                          ),
                          child: Text(
                            title,
                            style: headerTextStyle ??
                                Theme.of(context).textTheme.titleSmall?.apply(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            maxHeight == null
                ? ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: maxHeight!),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: dataTable,
                    ),
                  )
                : dataTable,
          ],
        ),
      ),
    );
  }
}
