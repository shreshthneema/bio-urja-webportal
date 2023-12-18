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

  const CurrentPricingTable({super.key, required this.defaultWidth});

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
        dataList: [
          [
            CellData(string: ''),
            CellData(string: 'FIXED PRICE PURCHASE BULK'),
            CellData(string: 'Pay'),
            CellData(string: '10/01/2023'),
            CellData(string: '10/31/2023'),
            CellData(string: 'Actual and Estimate'),
            CellData(string: 'CBOB'),
            CellData(string: 'USD'),
            CellData(string: 'Primary	'),
            CellData(string: 'gal'),
            CellData(string: 'Active'),
          ],
          [
            CellData(string: ''),
            CellData(string: 'Broker Commission'),
            CellData(string: 'Pay'),
            CellData(string: '10/01/2023'),
            CellData(string: '10/31/2023'),
            CellData(string: 'Actual and Estimate'),
            CellData(string: 'CBOB'),
            CellData(string: 'USD'),
            CellData(string: 'Secondary'),
            CellData(string: 'gal'),
            CellData(string: 'Inactive'),
          ]
        ],
      ),
    );
    //   return ;
  }
}
