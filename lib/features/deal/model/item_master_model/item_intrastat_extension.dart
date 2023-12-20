class ItemIntrastatExtension {
  String? itemCode;
  dynamic commodityCode;
  dynamic supplementaryUnit;
  int? factorOfSupplementaryUnit;
  int? importRegionState;
  int? exportRegionState;
  dynamic importNatureOfTransaction;
  dynamic exportNatureOfTransaction;
  dynamic importStatisticalProcedure;
  dynamic exportStatisticalProcedure;
  dynamic countryOfOrigin;
  dynamic serviceCode;
  String? type;
  String? serviceSupplyMethod;
  String? servicePaymentMethod;
  String? importRegionCountry;
  String? exportRegionCountry;
  String? useWeightInCalculation;
  String? intrastatRelevant;
  dynamic statisticalCode;

  ItemIntrastatExtension({
    this.itemCode,
    this.commodityCode,
    this.supplementaryUnit,
    this.factorOfSupplementaryUnit,
    this.importRegionState,
    this.exportRegionState,
    this.importNatureOfTransaction,
    this.exportNatureOfTransaction,
    this.importStatisticalProcedure,
    this.exportStatisticalProcedure,
    this.countryOfOrigin,
    this.serviceCode,
    this.type,
    this.serviceSupplyMethod,
    this.servicePaymentMethod,
    this.importRegionCountry,
    this.exportRegionCountry,
    this.useWeightInCalculation,
    this.intrastatRelevant,
    this.statisticalCode,
  });

  @override
  String toString() {
    return 'ItemIntrastatExtension(itemCode: $itemCode, commodityCode: $commodityCode, supplementaryUnit: $supplementaryUnit, factorOfSupplementaryUnit: $factorOfSupplementaryUnit, importRegionState: $importRegionState, exportRegionState: $exportRegionState, importNatureOfTransaction: $importNatureOfTransaction, exportNatureOfTransaction: $exportNatureOfTransaction, importStatisticalProcedure: $importStatisticalProcedure, exportStatisticalProcedure: $exportStatisticalProcedure, countryOfOrigin: $countryOfOrigin, serviceCode: $serviceCode, type: $type, serviceSupplyMethod: $serviceSupplyMethod, servicePaymentMethod: $servicePaymentMethod, importRegionCountry: $importRegionCountry, exportRegionCountry: $exportRegionCountry, useWeightInCalculation: $useWeightInCalculation, intrastatRelevant: $intrastatRelevant, statisticalCode: $statisticalCode)';
  }

  factory ItemIntrastatExtension.fromJson(Map<String, dynamic> json) {
    return ItemIntrastatExtension(
      itemCode: json['ItemCode'] as String?,
      commodityCode: json['CommodityCode'] as dynamic,
      supplementaryUnit: json['SupplementaryUnit'] as dynamic,
      factorOfSupplementaryUnit: json['FactorOfSupplementaryUnit'] as int?,
      importRegionState: json['ImportRegionState'] as int?,
      exportRegionState: json['ExportRegionState'] as int?,
      importNatureOfTransaction: json['ImportNatureOfTransaction'] as dynamic,
      exportNatureOfTransaction: json['ExportNatureOfTransaction'] as dynamic,
      importStatisticalProcedure: json['ImportStatisticalProcedure'] as dynamic,
      exportStatisticalProcedure: json['ExportStatisticalProcedure'] as dynamic,
      countryOfOrigin: json['CountryOfOrigin'] as dynamic,
      serviceCode: json['ServiceCode'] as dynamic,
      type: json['Type'] as String?,
      serviceSupplyMethod: json['ServiceSupplyMethod'] as String?,
      servicePaymentMethod: json['ServicePaymentMethod'] as String?,
      importRegionCountry: json['ImportRegionCountry'] as String?,
      exportRegionCountry: json['ExportRegionCountry'] as String?,
      useWeightInCalculation: json['UseWeightInCalculation'] as String?,
      intrastatRelevant: json['IntrastatRelevant'] as String?,
      statisticalCode: json['StatisticalCode'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'ItemCode': itemCode,
        'CommodityCode': commodityCode,
        'SupplementaryUnit': supplementaryUnit,
        'FactorOfSupplementaryUnit': factorOfSupplementaryUnit,
        'ImportRegionState': importRegionState,
        'ExportRegionState': exportRegionState,
        'ImportNatureOfTransaction': importNatureOfTransaction,
        'ExportNatureOfTransaction': exportNatureOfTransaction,
        'ImportStatisticalProcedure': importStatisticalProcedure,
        'ExportStatisticalProcedure': exportStatisticalProcedure,
        'CountryOfOrigin': countryOfOrigin,
        'ServiceCode': serviceCode,
        'Type': type,
        'ServiceSupplyMethod': serviceSupplyMethod,
        'ServicePaymentMethod': servicePaymentMethod,
        'ImportRegionCountry': importRegionCountry,
        'ExportRegionCountry': exportRegionCountry,
        'UseWeightInCalculation': useWeightInCalculation,
        'IntrastatRelevant': intrastatRelevant,
        'StatisticalCode': statisticalCode,
      };
}
