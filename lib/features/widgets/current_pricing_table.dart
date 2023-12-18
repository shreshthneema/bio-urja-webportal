import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/features/widgets/index.dart';

class CurrentPricingModel {
  String provision;
  String directions;
  String fromDate;
  String toDate;
  String provisionUsage;
  String product;
  String currency;
  String type;
  String uom;
  String status;

  CurrentPricingModel({
    required this.provision,
    required this.directions,
    required this.fromDate,
    required this.toDate,
    required this.provisionUsage,
    required this.product,
    required this.currency,
    required this.type,
    required this.uom,
    required this.status,
  });
}

class CurrentPricingTable extends StatefulWidget {
  final double defaultWidth;
  final List<CurrentPricingModel> data;

  const CurrentPricingTable(
      {super.key, required this.defaultWidth, required this.data});

  @override
  State<CurrentPricingTable> createState() => _CurrentPricingTableState();
}

class _CurrentPricingTableState extends State<CurrentPricingTable> {
  int? isSelected;
  @override
  Widget build(BuildContext context) {
    const Map<int, TableColumnWidth> columnWidths = {
      0: FixedColumnWidth(20), // index
      1: FlexColumnWidth(1), // Current Pricing Provisions
      2: FixedColumnWidth(80), // Direction
      3: FixedColumnWidth(85), // From Date
      4: FixedColumnWidth(85), //To Date
      5: FixedColumnWidth(140), // Provision Usage
      6: FixedColumnWidth(65), // Product
      7: FixedColumnWidth(70), //Currency
      8: FixedColumnWidth(75), //Type
      9: FixedColumnWidth(50), //UOM
      10: FixedColumnWidth(60), // Status
    };

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomTable(
        columnWidths: columnWidths,
        defaultWidth: widget.defaultWidth - 22,
        maxHeight: 100,
        isSelected: isSelected,
        onSelectRow: (index) {
          setState(() => isSelected = index);
        },
        minWidth: 950,
        tableHeaderTitles: const [
          '>.',
          'Current Pricing Provisions (1 active)',
          'Directions',
          'From Date',
          'To Date',
          'Provision Usage',
          'Product',
          'Currency',
          'Type',
          'UOM',
          'Status',
        ],
        dataList: widget.data
            .map(
              (e) => [
                CellData(string: ''),
                CellData(string: e.provision),
                CellData(string: e.directions),
                CellData(string: e.fromDate),
                CellData(string: e.toDate),
                CellData(string: e.provisionUsage),
                CellData(string: e.product),
                CellData(string: e.currency),
                CellData(string: e.type),
                CellData(string: e.uom),
                CellData(string: e.status),
              ],
            )
            .toList(),
      ),
    );
    //   return ;
  }
}
