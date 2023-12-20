import 'item_intrastat_extension.dart';
import 'item_price.dart';
import 'item_unit_of_measurement_collection.dart';
import 'item_warehouse_info_collection.dart';

class ItemMasterModel {
  String? odata;
  String? itemCode;
  String? itemName;
  dynamic foreignName;
  int? itemsGroupCode;
  int? customsGroupCode;
  dynamic salesVatGroup;
  dynamic barCode;
  String? vatLiable;
  String? purchaseItem;
  String? salesItem;
  String? inventoryItem;
  dynamic incomeAccount;
  dynamic exemptIncomeAccount;
  dynamic expanseAccount;
  dynamic mainsupplier;
  dynamic supplierCatalogNo;
  int? desiredInventory;
  int? minInventory;
  dynamic picture;
  dynamic userText;
  dynamic serialNum;
  int? commissionPercent;
  int? commissionSum;
  int? commissionGroup;
  String? treeType;
  String? assetItem;
  dynamic dataExportCode;
  int? manufacturer;
  int? quantityOnStock;
  int? quantityOrderedFromVendors;
  int? quantityOrderedByCustomers;
  String? manageSerialNumbers;
  String? manageBatchNumbers;
  String? valid;
  dynamic validFrom;
  dynamic validTo;
  dynamic validRemarks;
  String? frozen;
  dynamic frozenFrom;
  dynamic frozenTo;
  dynamic frozenRemarks;
  dynamic salesUnit;
  int? salesItemsPerUnit;
  dynamic salesPackagingUnit;
  int? salesQtyPerPackUnit;
  dynamic salesUnitLength;
  dynamic salesLengthUnit;
  dynamic salesUnitWidth;
  dynamic salesWidthUnit;
  dynamic salesUnitHeight;
  dynamic salesHeightUnit;
  int? salesUnitVolume;
  int? salesVolumeUnit;
  dynamic salesUnitWeight;
  dynamic salesWeightUnit;
  dynamic purchaseUnit;
  int? purchaseItemsPerUnit;
  dynamic purchasePackagingUnit;
  int? purchaseQtyPerPackUnit;
  dynamic purchaseUnitLength;
  dynamic purchaseLengthUnit;
  dynamic purchaseUnitWidth;
  dynamic purchaseWidthUnit;
  dynamic purchaseUnitHeight;
  dynamic purchaseHeightUnit;
  int? purchaseUnitVolume;
  int? purchaseVolumeUnit;
  dynamic purchaseUnitWeight;
  dynamic purchaseWeightUnit;
  dynamic purchaseVatGroup;
  int? salesFactor1;
  int? salesFactor2;
  int? salesFactor3;
  int? salesFactor4;
  int? purchaseFactor1;
  int? purchaseFactor2;
  int? purchaseFactor3;
  int? purchaseFactor4;
  int? movingAveragePrice;
  dynamic foreignRevenuesAccount;
  dynamic ecRevenuesAccount;
  dynamic foreignExpensesAccount;
  dynamic ecExpensesAccount;
  int? avgStdPrice;
  dynamic defaultWarehouse;
  dynamic shipType;
  String? glMethod;
  String? taxType;
  int? maxInventory;
  String? manageStockByWarehouse;
  dynamic purchaseHeightUnit1;
  dynamic purchaseUnitHeight1;
  dynamic purchaseLengthUnit1;
  dynamic purchaseUnitLength1;
  dynamic purchaseWeightUnit1;
  dynamic purchaseUnitWeight1;
  dynamic purchaseWidthUnit1;
  dynamic purchaseUnitWidth1;
  dynamic salesHeightUnit1;
  dynamic salesUnitHeight1;
  dynamic salesLengthUnit1;
  dynamic salesUnitLength1;
  dynamic salesWeightUnit1;
  dynamic salesUnitWeight1;
  dynamic salesWidthUnit1;
  dynamic salesUnitWidth1;
  String? forceSelectionOfSerialNumber;
  String? manageSerialNumbersOnReleaseOnly;
  String? wtLiable;
  String? costAccountingMethod;
  dynamic sww;
  String? warrantyTemplate;
  String? indirectTax;
  dynamic arTaxCode;
  dynamic apTaxCode;
  dynamic baseUnitName;
  dynamic itemCountryOrg;
  String? issueMethod;
  String? sriAndBatchManageMethod;
  String? isPhantom;
  String? inventoryUom;
  String? planningSystem;
  String? procurementMethod;
  String? componentWarehouse;
  dynamic orderIntervals;
  int? orderMultiple;
  dynamic leadTime;
  int? minOrderQuantity;
  String? itemType;
  String? itemClass;
  int? outgoingServiceCode;
  int? incomingServiceCode;
  int? serviceGroup;
  int? ncmCode;
  String? materialType;
  int? materialGroup;
  String? productSource;
  String? properties1;
  String? properties2;
  String? properties3;
  String? properties4;
  String? properties5;
  String? properties6;
  String? properties7;
  String? properties8;
  String? properties9;
  String? properties10;
  String? properties11;
  String? properties12;
  String? properties13;
  String? properties14;
  String? properties15;
  String? properties16;
  String? properties17;
  String? properties18;
  String? properties19;
  String? properties20;
  String? properties21;
  String? properties22;
  String? properties23;
  String? properties24;
  String? properties25;
  String? properties26;
  String? properties27;
  String? properties28;
  String? properties29;
  String? properties30;
  String? properties31;
  String? properties32;
  String? properties33;
  String? properties34;
  String? properties35;
  String? properties36;
  String? properties37;
  String? properties38;
  String? properties39;
  String? properties40;
  String? properties41;
  String? properties42;
  String? properties43;
  String? properties44;
  String? properties45;
  String? properties46;
  String? properties47;
  String? properties48;
  String? properties49;
  String? properties50;
  String? properties51;
  String? properties52;
  String? properties53;
  String? properties54;
  String? properties55;
  String? properties56;
  String? properties57;
  String? properties58;
  String? properties59;
  String? properties60;
  String? properties61;
  String? properties62;
  String? properties63;
  String? properties64;
  String? autoCreateSerialNumbersOnRelease;
  int? dnfEntry;
  dynamic gtsItemSpec;
  dynamic gtsItemTaxCategory;
  dynamic fuelId;
  String? beverageTableCode;
  String? beverageGroupCode;
  dynamic beverageCommercialBrandCode;
  int? series;
  dynamic toleranceDays;
  String? typeOfAdvancedRules;
  String? issuePrimarilyBy;
  String? noDiscounts;
  String? assetClass;
  String? assetGroup;
  String? inventoryNumber;
  dynamic technician;
  dynamic employee;
  dynamic location;
  String? assetStatus;
  dynamic capitalizationDate;
  String? statisticalAsset;
  String? cession;
  String? deactivateAfterUsefulLife;
  String? manageByQuantity;
  int? uoMGroupEntry;
  int? inventoryUoMEntry;
  dynamic defaultSalesUoMEntry;
  dynamic defaultPurchasingUoMEntry;
  dynamic depreciationGroup;
  String? assetSerialNumber;
  dynamic inventoryWeight;
  dynamic inventoryWeightUnit;
  dynamic inventoryWeight1;
  dynamic inventoryWeightUnit1;
  dynamic defaultCountingUnit;
  int? countingItemsPerUnit;
  dynamic defaultCountingUoMEntry;
  String? excisable;
  int? chapterId;
  dynamic scsCode;
  dynamic spProdType;
  int? prodStdCost;
  String? inCostRollup;
  String? virtualAssetItem;
  String? enforceAssetSerialNumbers;
  dynamic attachmentEntry;
  dynamic linkedResource;
  String? updateDate;
  String? updateTime;
  String? gstRelevnt;
  int? sacEntry;
  String? gstTaxCategory;
  int? serviceCategoryEntry;
  dynamic capitalGoodsOnHoldPercent;
  dynamic capitalGoodsOnHoldLimit;
  int? assessableValue;
  int? assVal4Wtr;
  String? soiExcisable;
  dynamic tnved;
  String? importedItem;
  int? pricingUnit;
  String? createDate;
  String? createTime;
  dynamic nveCode;
  int? ctrSealQty;
  int? cestCode;
  dynamic legalText;
  int? dataVersion;
  dynamic createQrCodeFrom;
  String? traceableItem;
  dynamic commodityClassification;
  dynamic uType;
  dynamic uPart;
  dynamic uChapterId;
  dynamic uItmRate;
  List<ItemPrice>? itemPrices;
  List<ItemWarehouseInfoCollection>? itemWarehouseInfoCollection;
  List<dynamic>? itemPreferredVendors;
  List<dynamic>? itemLocalizationInfos;
  List<dynamic>? itemProjects;
  List<dynamic>? itemDistributionRules;
  List<dynamic>? itemAttributeGroups;
  List<dynamic>? itemDepreciationParameters;
  List<dynamic>? itemPeriodControls;
  List<ItemUnitOfMeasurementCollection>? itemUnitOfMeasurementCollection;
  List<dynamic>? itemBarCodeCollection;
  ItemIntrastatExtension? itemIntrastatExtension;

  ItemMasterModel({
    this.odata,
    this.itemCode,
    this.itemName,
    this.foreignName,
    this.itemsGroupCode,
    this.customsGroupCode,
    this.salesVatGroup,
    this.barCode,
    this.vatLiable,
    this.purchaseItem,
    this.salesItem,
    this.inventoryItem,
    this.incomeAccount,
    this.exemptIncomeAccount,
    this.expanseAccount,
    this.mainsupplier,
    this.supplierCatalogNo,
    this.desiredInventory,
    this.minInventory,
    this.picture,
    this.userText,
    this.serialNum,
    this.commissionPercent,
    this.commissionSum,
    this.commissionGroup,
    this.treeType,
    this.assetItem,
    this.dataExportCode,
    this.manufacturer,
    this.quantityOnStock,
    this.quantityOrderedFromVendors,
    this.quantityOrderedByCustomers,
    this.manageSerialNumbers,
    this.manageBatchNumbers,
    this.valid,
    this.validFrom,
    this.validTo,
    this.validRemarks,
    this.frozen,
    this.frozenFrom,
    this.frozenTo,
    this.frozenRemarks,
    this.salesUnit,
    this.salesItemsPerUnit,
    this.salesPackagingUnit,
    this.salesQtyPerPackUnit,
    this.salesUnitLength,
    this.salesLengthUnit,
    this.salesUnitWidth,
    this.salesWidthUnit,
    this.salesUnitHeight,
    this.salesHeightUnit,
    this.salesUnitVolume,
    this.salesVolumeUnit,
    this.salesUnitWeight,
    this.salesWeightUnit,
    this.purchaseUnit,
    this.purchaseItemsPerUnit,
    this.purchasePackagingUnit,
    this.purchaseQtyPerPackUnit,
    this.purchaseUnitLength,
    this.purchaseLengthUnit,
    this.purchaseUnitWidth,
    this.purchaseWidthUnit,
    this.purchaseUnitHeight,
    this.purchaseHeightUnit,
    this.purchaseUnitVolume,
    this.purchaseVolumeUnit,
    this.purchaseUnitWeight,
    this.purchaseWeightUnit,
    this.purchaseVatGroup,
    this.salesFactor1,
    this.salesFactor2,
    this.salesFactor3,
    this.salesFactor4,
    this.purchaseFactor1,
    this.purchaseFactor2,
    this.purchaseFactor3,
    this.purchaseFactor4,
    this.movingAveragePrice,
    this.foreignRevenuesAccount,
    this.ecRevenuesAccount,
    this.foreignExpensesAccount,
    this.ecExpensesAccount,
    this.avgStdPrice,
    this.defaultWarehouse,
    this.shipType,
    this.glMethod,
    this.taxType,
    this.maxInventory,
    this.manageStockByWarehouse,
    this.purchaseHeightUnit1,
    this.purchaseUnitHeight1,
    this.purchaseLengthUnit1,
    this.purchaseUnitLength1,
    this.purchaseWeightUnit1,
    this.purchaseUnitWeight1,
    this.purchaseWidthUnit1,
    this.purchaseUnitWidth1,
    this.salesHeightUnit1,
    this.salesUnitHeight1,
    this.salesLengthUnit1,
    this.salesUnitLength1,
    this.salesWeightUnit1,
    this.salesUnitWeight1,
    this.salesWidthUnit1,
    this.salesUnitWidth1,
    this.forceSelectionOfSerialNumber,
    this.manageSerialNumbersOnReleaseOnly,
    this.wtLiable,
    this.costAccountingMethod,
    this.sww,
    this.warrantyTemplate,
    this.indirectTax,
    this.arTaxCode,
    this.apTaxCode,
    this.baseUnitName,
    this.itemCountryOrg,
    this.issueMethod,
    this.sriAndBatchManageMethod,
    this.isPhantom,
    this.inventoryUom,
    this.planningSystem,
    this.procurementMethod,
    this.componentWarehouse,
    this.orderIntervals,
    this.orderMultiple,
    this.leadTime,
    this.minOrderQuantity,
    this.itemType,
    this.itemClass,
    this.outgoingServiceCode,
    this.incomingServiceCode,
    this.serviceGroup,
    this.ncmCode,
    this.materialType,
    this.materialGroup,
    this.productSource,
    this.properties1,
    this.properties2,
    this.properties3,
    this.properties4,
    this.properties5,
    this.properties6,
    this.properties7,
    this.properties8,
    this.properties9,
    this.properties10,
    this.properties11,
    this.properties12,
    this.properties13,
    this.properties14,
    this.properties15,
    this.properties16,
    this.properties17,
    this.properties18,
    this.properties19,
    this.properties20,
    this.properties21,
    this.properties22,
    this.properties23,
    this.properties24,
    this.properties25,
    this.properties26,
    this.properties27,
    this.properties28,
    this.properties29,
    this.properties30,
    this.properties31,
    this.properties32,
    this.properties33,
    this.properties34,
    this.properties35,
    this.properties36,
    this.properties37,
    this.properties38,
    this.properties39,
    this.properties40,
    this.properties41,
    this.properties42,
    this.properties43,
    this.properties44,
    this.properties45,
    this.properties46,
    this.properties47,
    this.properties48,
    this.properties49,
    this.properties50,
    this.properties51,
    this.properties52,
    this.properties53,
    this.properties54,
    this.properties55,
    this.properties56,
    this.properties57,
    this.properties58,
    this.properties59,
    this.properties60,
    this.properties61,
    this.properties62,
    this.properties63,
    this.properties64,
    this.autoCreateSerialNumbersOnRelease,
    this.dnfEntry,
    this.gtsItemSpec,
    this.gtsItemTaxCategory,
    this.fuelId,
    this.beverageTableCode,
    this.beverageGroupCode,
    this.beverageCommercialBrandCode,
    this.series,
    this.toleranceDays,
    this.typeOfAdvancedRules,
    this.issuePrimarilyBy,
    this.noDiscounts,
    this.assetClass,
    this.assetGroup,
    this.inventoryNumber,
    this.technician,
    this.employee,
    this.location,
    this.assetStatus,
    this.capitalizationDate,
    this.statisticalAsset,
    this.cession,
    this.deactivateAfterUsefulLife,
    this.manageByQuantity,
    this.uoMGroupEntry,
    this.inventoryUoMEntry,
    this.defaultSalesUoMEntry,
    this.defaultPurchasingUoMEntry,
    this.depreciationGroup,
    this.assetSerialNumber,
    this.inventoryWeight,
    this.inventoryWeightUnit,
    this.inventoryWeight1,
    this.inventoryWeightUnit1,
    this.defaultCountingUnit,
    this.countingItemsPerUnit,
    this.defaultCountingUoMEntry,
    this.excisable,
    this.chapterId,
    this.scsCode,
    this.spProdType,
    this.prodStdCost,
    this.inCostRollup,
    this.virtualAssetItem,
    this.enforceAssetSerialNumbers,
    this.attachmentEntry,
    this.linkedResource,
    this.updateDate,
    this.updateTime,
    this.gstRelevnt,
    this.sacEntry,
    this.gstTaxCategory,
    this.serviceCategoryEntry,
    this.capitalGoodsOnHoldPercent,
    this.capitalGoodsOnHoldLimit,
    this.assessableValue,
    this.assVal4Wtr,
    this.soiExcisable,
    this.tnved,
    this.importedItem,
    this.pricingUnit,
    this.createDate,
    this.createTime,
    this.nveCode,
    this.ctrSealQty,
    this.cestCode,
    this.legalText,
    this.dataVersion,
    this.createQrCodeFrom,
    this.traceableItem,
    this.commodityClassification,
    this.uType,
    this.uPart,
    this.uChapterId,
    this.uItmRate,
    this.itemPrices,
    this.itemWarehouseInfoCollection,
    this.itemPreferredVendors,
    this.itemLocalizationInfos,
    this.itemProjects,
    this.itemDistributionRules,
    this.itemAttributeGroups,
    this.itemDepreciationParameters,
    this.itemPeriodControls,
    this.itemUnitOfMeasurementCollection,
    this.itemBarCodeCollection,
    this.itemIntrastatExtension,
  });

  @override
  String toString() {
    return 'ItemMasterModel(odata: $odata, itemCode: $itemCode, itemName: $itemName, foreignName: $foreignName, itemsGroupCode: $itemsGroupCode, customsGroupCode: $customsGroupCode, salesVatGroup: $salesVatGroup, barCode: $barCode, vatLiable: $vatLiable, purchaseItem: $purchaseItem, salesItem: $salesItem, inventoryItem: $inventoryItem, incomeAccount: $incomeAccount, exemptIncomeAccount: $exemptIncomeAccount, expanseAccount: $expanseAccount, mainsupplier: $mainsupplier, supplierCatalogNo: $supplierCatalogNo, desiredInventory: $desiredInventory, minInventory: $minInventory, picture: $picture, userText: $userText, serialNum: $serialNum, commissionPercent: $commissionPercent, commissionSum: $commissionSum, commissionGroup: $commissionGroup, treeType: $treeType, assetItem: $assetItem, dataExportCode: $dataExportCode, manufacturer: $manufacturer, quantityOnStock: $quantityOnStock, quantityOrderedFromVendors: $quantityOrderedFromVendors, quantityOrderedByCustomers: $quantityOrderedByCustomers, manageSerialNumbers: $manageSerialNumbers, manageBatchNumbers: $manageBatchNumbers, valid: $valid, validFrom: $validFrom, validTo: $validTo, validRemarks: $validRemarks, frozen: $frozen, frozenFrom: $frozenFrom, frozenTo: $frozenTo, frozenRemarks: $frozenRemarks, salesUnit: $salesUnit, salesItemsPerUnit: $salesItemsPerUnit, salesPackagingUnit: $salesPackagingUnit, salesQtyPerPackUnit: $salesQtyPerPackUnit, salesUnitLength: $salesUnitLength, salesLengthUnit: $salesLengthUnit, salesUnitWidth: $salesUnitWidth, salesWidthUnit: $salesWidthUnit, salesUnitHeight: $salesUnitHeight, salesHeightUnit: $salesHeightUnit, salesUnitVolume: $salesUnitVolume, salesVolumeUnit: $salesVolumeUnit, salesUnitWeight: $salesUnitWeight, salesWeightUnit: $salesWeightUnit, purchaseUnit: $purchaseUnit, purchaseItemsPerUnit: $purchaseItemsPerUnit, purchasePackagingUnit: $purchasePackagingUnit, purchaseQtyPerPackUnit: $purchaseQtyPerPackUnit, purchaseUnitLength: $purchaseUnitLength, purchaseLengthUnit: $purchaseLengthUnit, purchaseUnitWidth: $purchaseUnitWidth, purchaseWidthUnit: $purchaseWidthUnit, purchaseUnitHeight: $purchaseUnitHeight, purchaseHeightUnit: $purchaseHeightUnit, purchaseUnitVolume: $purchaseUnitVolume, purchaseVolumeUnit: $purchaseVolumeUnit, purchaseUnitWeight: $purchaseUnitWeight, purchaseWeightUnit: $purchaseWeightUnit, purchaseVatGroup: $purchaseVatGroup, salesFactor1: $salesFactor1, salesFactor2: $salesFactor2, salesFactor3: $salesFactor3, salesFactor4: $salesFactor4, purchaseFactor1: $purchaseFactor1, purchaseFactor2: $purchaseFactor2, purchaseFactor3: $purchaseFactor3, purchaseFactor4: $purchaseFactor4, movingAveragePrice: $movingAveragePrice, foreignRevenuesAccount: $foreignRevenuesAccount, ecRevenuesAccount: $ecRevenuesAccount, foreignExpensesAccount: $foreignExpensesAccount, ecExpensesAccount: $ecExpensesAccount, avgStdPrice: $avgStdPrice, defaultWarehouse: $defaultWarehouse, shipType: $shipType, glMethod: $glMethod, taxType: $taxType, maxInventory: $maxInventory, manageStockByWarehouse: $manageStockByWarehouse, purchaseHeightUnit1: $purchaseHeightUnit1, purchaseUnitHeight1: $purchaseUnitHeight1, purchaseLengthUnit1: $purchaseLengthUnit1, purchaseUnitLength1: $purchaseUnitLength1, purchaseWeightUnit1: $purchaseWeightUnit1, purchaseUnitWeight1: $purchaseUnitWeight1, purchaseWidthUnit1: $purchaseWidthUnit1, purchaseUnitWidth1: $purchaseUnitWidth1, salesHeightUnit1: $salesHeightUnit1, salesUnitHeight1: $salesUnitHeight1, salesLengthUnit1: $salesLengthUnit1, salesUnitLength1: $salesUnitLength1, salesWeightUnit1: $salesWeightUnit1, salesUnitWeight1: $salesUnitWeight1, salesWidthUnit1: $salesWidthUnit1, salesUnitWidth1: $salesUnitWidth1, forceSelectionOfSerialNumber: $forceSelectionOfSerialNumber, manageSerialNumbersOnReleaseOnly: $manageSerialNumbersOnReleaseOnly, wtLiable: $wtLiable, costAccountingMethod: $costAccountingMethod, sww: $sww, warrantyTemplate: $warrantyTemplate, indirectTax: $indirectTax, arTaxCode: $arTaxCode, apTaxCode: $apTaxCode, baseUnitName: $baseUnitName, itemCountryOrg: $itemCountryOrg, issueMethod: $issueMethod, sriAndBatchManageMethod: $sriAndBatchManageMethod, isPhantom: $isPhantom, inventoryUom: $inventoryUom, planningSystem: $planningSystem, procurementMethod: $procurementMethod, componentWarehouse: $componentWarehouse, orderIntervals: $orderIntervals, orderMultiple: $orderMultiple, leadTime: $leadTime, minOrderQuantity: $minOrderQuantity, itemType: $itemType, itemClass: $itemClass, outgoingServiceCode: $outgoingServiceCode, incomingServiceCode: $incomingServiceCode, serviceGroup: $serviceGroup, ncmCode: $ncmCode, materialType: $materialType, materialGroup: $materialGroup, productSource: $productSource, properties1: $properties1, properties2: $properties2, properties3: $properties3, properties4: $properties4, properties5: $properties5, properties6: $properties6, properties7: $properties7, properties8: $properties8, properties9: $properties9, properties10: $properties10, properties11: $properties11, properties12: $properties12, properties13: $properties13, properties14: $properties14, properties15: $properties15, properties16: $properties16, properties17: $properties17, properties18: $properties18, properties19: $properties19, properties20: $properties20, properties21: $properties21, properties22: $properties22, properties23: $properties23, properties24: $properties24, properties25: $properties25, properties26: $properties26, properties27: $properties27, properties28: $properties28, properties29: $properties29, properties30: $properties30, properties31: $properties31, properties32: $properties32, properties33: $properties33, properties34: $properties34, properties35: $properties35, properties36: $properties36, properties37: $properties37, properties38: $properties38, properties39: $properties39, properties40: $properties40, properties41: $properties41, properties42: $properties42, properties43: $properties43, properties44: $properties44, properties45: $properties45, properties46: $properties46, properties47: $properties47, properties48: $properties48, properties49: $properties49, properties50: $properties50, properties51: $properties51, properties52: $properties52, properties53: $properties53, properties54: $properties54, properties55: $properties55, properties56: $properties56, properties57: $properties57, properties58: $properties58, properties59: $properties59, properties60: $properties60, properties61: $properties61, properties62: $properties62, properties63: $properties63, properties64: $properties64, autoCreateSerialNumbersOnRelease: $autoCreateSerialNumbersOnRelease, dnfEntry: $dnfEntry, gtsItemSpec: $gtsItemSpec, gtsItemTaxCategory: $gtsItemTaxCategory, fuelId: $fuelId, beverageTableCode: $beverageTableCode, beverageGroupCode: $beverageGroupCode, beverageCommercialBrandCode: $beverageCommercialBrandCode, series: $series, toleranceDays: $toleranceDays, typeOfAdvancedRules: $typeOfAdvancedRules, issuePrimarilyBy: $issuePrimarilyBy, noDiscounts: $noDiscounts, assetClass: $assetClass, assetGroup: $assetGroup, inventoryNumber: $inventoryNumber, technician: $technician, employee: $employee, location: $location, assetStatus: $assetStatus, capitalizationDate: $capitalizationDate, statisticalAsset: $statisticalAsset, cession: $cession, deactivateAfterUsefulLife: $deactivateAfterUsefulLife, manageByQuantity: $manageByQuantity, uoMGroupEntry: $uoMGroupEntry, inventoryUoMEntry: $inventoryUoMEntry, defaultSalesUoMEntry: $defaultSalesUoMEntry, defaultPurchasingUoMEntry: $defaultPurchasingUoMEntry, depreciationGroup: $depreciationGroup, assetSerialNumber: $assetSerialNumber, inventoryWeight: $inventoryWeight, inventoryWeightUnit: $inventoryWeightUnit, inventoryWeight1: $inventoryWeight1, inventoryWeightUnit1: $inventoryWeightUnit1, defaultCountingUnit: $defaultCountingUnit, countingItemsPerUnit: $countingItemsPerUnit, defaultCountingUoMEntry: $defaultCountingUoMEntry, excisable: $excisable, chapterId: $chapterId, scsCode: $scsCode, spProdType: $spProdType, prodStdCost: $prodStdCost, inCostRollup: $inCostRollup, virtualAssetItem: $virtualAssetItem, enforceAssetSerialNumbers: $enforceAssetSerialNumbers, attachmentEntry: $attachmentEntry, linkedResource: $linkedResource, updateDate: $updateDate, updateTime: $updateTime, gstRelevnt: $gstRelevnt, sacEntry: $sacEntry, gstTaxCategory: $gstTaxCategory, serviceCategoryEntry: $serviceCategoryEntry, capitalGoodsOnHoldPercent: $capitalGoodsOnHoldPercent, capitalGoodsOnHoldLimit: $capitalGoodsOnHoldLimit, assessableValue: $assessableValue, assVal4Wtr: $assVal4Wtr, soiExcisable: $soiExcisable, tnved: $tnved, importedItem: $importedItem, pricingUnit: $pricingUnit, createDate: $createDate, createTime: $createTime, nveCode: $nveCode, ctrSealQty: $ctrSealQty, cestCode: $cestCode, legalText: $legalText, dataVersion: $dataVersion, createQrCodeFrom: $createQrCodeFrom, traceableItem: $traceableItem, commodityClassification: $commodityClassification, uType: $uType, uPart: $uPart, uChapterId: $uChapterId, uItmRate: $uItmRate, itemPrices: $itemPrices, itemWarehouseInfoCollection: $itemWarehouseInfoCollection, itemPreferredVendors: $itemPreferredVendors, itemLocalizationInfos: $itemLocalizationInfos, itemProjects: $itemProjects, itemDistributionRules: $itemDistributionRules, itemAttributeGroups: $itemAttributeGroups, itemDepreciationParameters: $itemDepreciationParameters, itemPeriodControls: $itemPeriodControls, itemUnitOfMeasurementCollection: $itemUnitOfMeasurementCollection, itemBarCodeCollection: $itemBarCodeCollection, itemIntrastatExtension: $itemIntrastatExtension)';
  }

  factory ItemMasterModel.fromJson(Map<String, dynamic> json) {
    return ItemMasterModel(
      odata: json['odata.etag'] as String?,
      itemCode: json['ItemCode'] as String?,
      itemName: json['ItemName'] as String?,
      foreignName: json['ForeignName'] as dynamic,
      itemsGroupCode: json['ItemsGroupCode'] as int?,
      customsGroupCode: json['CustomsGroupCode'] as int?,
      salesVatGroup: json['SalesVATGroup'] as dynamic,
      barCode: json['BarCode'] as dynamic,
      vatLiable: json['VatLiable'] as String?,
      purchaseItem: json['PurchaseItem'] as String?,
      salesItem: json['SalesItem'] as String?,
      inventoryItem: json['InventoryItem'] as String?,
      incomeAccount: json['IncomeAccount'] as dynamic,
      exemptIncomeAccount: json['ExemptIncomeAccount'] as dynamic,
      expanseAccount: json['ExpanseAccount'] as dynamic,
      mainsupplier: json['Mainsupplier'] as dynamic,
      supplierCatalogNo: json['SupplierCatalogNo'] as dynamic,
      desiredInventory: json['DesiredInventory'] as int?,
      minInventory: json['MinInventory'] as int?,
      picture: json['Picture'] as dynamic,
      userText: json['User_Text'] as dynamic,
      serialNum: json['SerialNum'] as dynamic,
      commissionPercent: json['CommissionPercent'] as int?,
      commissionSum: json['CommissionSum'] as int?,
      commissionGroup: json['CommissionGroup'] as int?,
      treeType: json['TreeType'] as String?,
      assetItem: json['AssetItem'] as String?,
      dataExportCode: json['DataExportCode'] as dynamic,
      manufacturer: json['Manufacturer'] as int?,
      quantityOnStock: json['QuantityOnStock'] as int?,
      quantityOrderedFromVendors: json['QuantityOrderedFromVendors'] as int?,
      quantityOrderedByCustomers: json['QuantityOrderedByCustomers'] as int?,
      manageSerialNumbers: json['ManageSerialNumbers'] as String?,
      manageBatchNumbers: json['ManageBatchNumbers'] as String?,
      valid: json['Valid'] as String?,
      validFrom: json['ValidFrom'] as dynamic,
      validTo: json['ValidTo'] as dynamic,
      validRemarks: json['ValidRemarks'] as dynamic,
      frozen: json['Frozen'] as String?,
      frozenFrom: json['FrozenFrom'] as dynamic,
      frozenTo: json['FrozenTo'] as dynamic,
      frozenRemarks: json['FrozenRemarks'] as dynamic,
      salesUnit: json['SalesUnit'] as dynamic,
      salesItemsPerUnit: json['SalesItemsPerUnit'] as int?,
      salesPackagingUnit: json['SalesPackagingUnit'] as dynamic,
      salesQtyPerPackUnit: json['SalesQtyPerPackUnit'] as int?,
      salesUnitLength: json['SalesUnitLength'] as dynamic,
      salesLengthUnit: json['SalesLengthUnit'] as dynamic,
      salesUnitWidth: json['SalesUnitWidth'] as dynamic,
      salesWidthUnit: json['SalesWidthUnit'] as dynamic,
      salesUnitHeight: json['SalesUnitHeight'] as dynamic,
      salesHeightUnit: json['SalesHeightUnit'] as dynamic,
      salesUnitVolume: json['SalesUnitVolume'] as int?,
      salesVolumeUnit: json['SalesVolumeUnit'] as int?,
      salesUnitWeight: json['SalesUnitWeight'] as dynamic,
      salesWeightUnit: json['SalesWeightUnit'] as dynamic,
      purchaseUnit: json['PurchaseUnit'] as dynamic,
      purchaseItemsPerUnit: json['PurchaseItemsPerUnit'] as int?,
      purchasePackagingUnit: json['PurchasePackagingUnit'] as dynamic,
      purchaseQtyPerPackUnit: json['PurchaseQtyPerPackUnit'] as int?,
      purchaseUnitLength: json['PurchaseUnitLength'] as dynamic,
      purchaseLengthUnit: json['PurchaseLengthUnit'] as dynamic,
      purchaseUnitWidth: json['PurchaseUnitWidth'] as dynamic,
      purchaseWidthUnit: json['PurchaseWidthUnit'] as dynamic,
      purchaseUnitHeight: json['PurchaseUnitHeight'] as dynamic,
      purchaseHeightUnit: json['PurchaseHeightUnit'] as dynamic,
      purchaseUnitVolume: json['PurchaseUnitVolume'] as int?,
      purchaseVolumeUnit: json['PurchaseVolumeUnit'] as int?,
      purchaseUnitWeight: json['PurchaseUnitWeight'] as dynamic,
      purchaseWeightUnit: json['PurchaseWeightUnit'] as dynamic,
      purchaseVatGroup: json['PurchaseVATGroup'] as dynamic,
      salesFactor1: json['SalesFactor1'] as int?,
      salesFactor2: json['SalesFactor2'] as int?,
      salesFactor3: json['SalesFactor3'] as int?,
      salesFactor4: json['SalesFactor4'] as int?,
      purchaseFactor1: json['PurchaseFactor1'] as int?,
      purchaseFactor2: json['PurchaseFactor2'] as int?,
      purchaseFactor3: json['PurchaseFactor3'] as int?,
      purchaseFactor4: json['PurchaseFactor4'] as int?,
      movingAveragePrice: json['MovingAveragePrice'] as int?,
      foreignRevenuesAccount: json['ForeignRevenuesAccount'] as dynamic,
      ecRevenuesAccount: json['ECRevenuesAccount'] as dynamic,
      foreignExpensesAccount: json['ForeignExpensesAccount'] as dynamic,
      ecExpensesAccount: json['ECExpensesAccount'] as dynamic,
      avgStdPrice: json['AvgStdPrice'] as int?,
      defaultWarehouse: json['DefaultWarehouse'] as dynamic,
      shipType: json['ShipType'] as dynamic,
      glMethod: json['GLMethod'] as String?,
      taxType: json['TaxType'] as String?,
      maxInventory: json['MaxInventory'] as int?,
      manageStockByWarehouse: json['ManageStockByWarehouse'] as String?,
      purchaseHeightUnit1: json['PurchaseHeightUnit1'] as dynamic,
      purchaseUnitHeight1: json['PurchaseUnitHeight1'] as dynamic,
      purchaseLengthUnit1: json['PurchaseLengthUnit1'] as dynamic,
      purchaseUnitLength1: json['PurchaseUnitLength1'] as dynamic,
      purchaseWeightUnit1: json['PurchaseWeightUnit1'] as dynamic,
      purchaseUnitWeight1: json['PurchaseUnitWeight1'] as dynamic,
      purchaseWidthUnit1: json['PurchaseWidthUnit1'] as dynamic,
      purchaseUnitWidth1: json['PurchaseUnitWidth1'] as dynamic,
      salesHeightUnit1: json['SalesHeightUnit1'] as dynamic,
      salesUnitHeight1: json['SalesUnitHeight1'] as dynamic,
      salesLengthUnit1: json['SalesLengthUnit1'] as dynamic,
      salesUnitLength1: json['SalesUnitLength1'] as dynamic,
      salesWeightUnit1: json['SalesWeightUnit1'] as dynamic,
      salesUnitWeight1: json['SalesUnitWeight1'] as dynamic,
      salesWidthUnit1: json['SalesWidthUnit1'] as dynamic,
      salesUnitWidth1: json['SalesUnitWidth1'] as dynamic,
      forceSelectionOfSerialNumber:
          json['ForceSelectionOfSerialNumber'] as String?,
      manageSerialNumbersOnReleaseOnly:
          json['ManageSerialNumbersOnReleaseOnly'] as String?,
      wtLiable: json['WTLiable'] as String?,
      costAccountingMethod: json['CostAccountingMethod'] as String?,
      sww: json['SWW'] as dynamic,
      warrantyTemplate: json['WarrantyTemplate'] as String?,
      indirectTax: json['IndirectTax'] as String?,
      arTaxCode: json['ArTaxCode'] as dynamic,
      apTaxCode: json['ApTaxCode'] as dynamic,
      baseUnitName: json['BaseUnitName'] as dynamic,
      itemCountryOrg: json['ItemCountryOrg'] as dynamic,
      issueMethod: json['IssueMethod'] as String?,
      sriAndBatchManageMethod: json['SRIAndBatchManageMethod'] as String?,
      isPhantom: json['IsPhantom'] as String?,
      inventoryUom: json['InventoryUOM'] as String?,
      planningSystem: json['PlanningSystem'] as String?,
      procurementMethod: json['ProcurementMethod'] as String?,
      componentWarehouse: json['ComponentWarehouse'] as String?,
      orderIntervals: json['OrderIntervals'] as dynamic,
      orderMultiple: json['OrderMultiple'] as int?,
      leadTime: json['LeadTime'] as dynamic,
      minOrderQuantity: json['MinOrderQuantity'] as int?,
      itemType: json['ItemType'] as String?,
      itemClass: json['ItemClass'] as String?,
      outgoingServiceCode: json['OutgoingServiceCode'] as int?,
      incomingServiceCode: json['IncomingServiceCode'] as int?,
      serviceGroup: json['ServiceGroup'] as int?,
      ncmCode: json['NCMCode'] as int?,
      materialType: json['MaterialType'] as String?,
      materialGroup: json['MaterialGroup'] as int?,
      productSource: json['ProductSource'] as String?,
      properties1: json['Properties1'] as String?,
      properties2: json['Properties2'] as String?,
      properties3: json['Properties3'] as String?,
      properties4: json['Properties4'] as String?,
      properties5: json['Properties5'] as String?,
      properties6: json['Properties6'] as String?,
      properties7: json['Properties7'] as String?,
      properties8: json['Properties8'] as String?,
      properties9: json['Properties9'] as String?,
      properties10: json['Properties10'] as String?,
      properties11: json['Properties11'] as String?,
      properties12: json['Properties12'] as String?,
      properties13: json['Properties13'] as String?,
      properties14: json['Properties14'] as String?,
      properties15: json['Properties15'] as String?,
      properties16: json['Properties16'] as String?,
      properties17: json['Properties17'] as String?,
      properties18: json['Properties18'] as String?,
      properties19: json['Properties19'] as String?,
      properties20: json['Properties20'] as String?,
      properties21: json['Properties21'] as String?,
      properties22: json['Properties22'] as String?,
      properties23: json['Properties23'] as String?,
      properties24: json['Properties24'] as String?,
      properties25: json['Properties25'] as String?,
      properties26: json['Properties26'] as String?,
      properties27: json['Properties27'] as String?,
      properties28: json['Properties28'] as String?,
      properties29: json['Properties29'] as String?,
      properties30: json['Properties30'] as String?,
      properties31: json['Properties31'] as String?,
      properties32: json['Properties32'] as String?,
      properties33: json['Properties33'] as String?,
      properties34: json['Properties34'] as String?,
      properties35: json['Properties35'] as String?,
      properties36: json['Properties36'] as String?,
      properties37: json['Properties37'] as String?,
      properties38: json['Properties38'] as String?,
      properties39: json['Properties39'] as String?,
      properties40: json['Properties40'] as String?,
      properties41: json['Properties41'] as String?,
      properties42: json['Properties42'] as String?,
      properties43: json['Properties43'] as String?,
      properties44: json['Properties44'] as String?,
      properties45: json['Properties45'] as String?,
      properties46: json['Properties46'] as String?,
      properties47: json['Properties47'] as String?,
      properties48: json['Properties48'] as String?,
      properties49: json['Properties49'] as String?,
      properties50: json['Properties50'] as String?,
      properties51: json['Properties51'] as String?,
      properties52: json['Properties52'] as String?,
      properties53: json['Properties53'] as String?,
      properties54: json['Properties54'] as String?,
      properties55: json['Properties55'] as String?,
      properties56: json['Properties56'] as String?,
      properties57: json['Properties57'] as String?,
      properties58: json['Properties58'] as String?,
      properties59: json['Properties59'] as String?,
      properties60: json['Properties60'] as String?,
      properties61: json['Properties61'] as String?,
      properties62: json['Properties62'] as String?,
      properties63: json['Properties63'] as String?,
      properties64: json['Properties64'] as String?,
      autoCreateSerialNumbersOnRelease:
          json['AutoCreateSerialNumbersOnRelease'] as String?,
      dnfEntry: json['DNFEntry'] as int?,
      gtsItemSpec: json['GTSItemSpec'] as dynamic,
      gtsItemTaxCategory: json['GTSItemTaxCategory'] as dynamic,
      fuelId: json['FuelID'] as dynamic,
      beverageTableCode: json['BeverageTableCode'] as String?,
      beverageGroupCode: json['BeverageGroupCode'] as String?,
      beverageCommercialBrandCode:
          json['BeverageCommercialBrandCode'] as dynamic,
      series: json['Series'] as int?,
      toleranceDays: json['ToleranceDays'] as dynamic,
      typeOfAdvancedRules: json['TypeOfAdvancedRules'] as String?,
      issuePrimarilyBy: json['IssuePrimarilyBy'] as String?,
      noDiscounts: json['NoDiscounts'] as String?,
      assetClass: json['AssetClass'] as String?,
      assetGroup: json['AssetGroup'] as String?,
      inventoryNumber: json['InventoryNumber'] as String?,
      technician: json['Technician'] as dynamic,
      employee: json['Employee'] as dynamic,
      location: json['Location'] as dynamic,
      assetStatus: json['AssetStatus'] as String?,
      capitalizationDate: json['CapitalizationDate'] as dynamic,
      statisticalAsset: json['StatisticalAsset'] as String?,
      cession: json['Cession'] as String?,
      deactivateAfterUsefulLife: json['DeactivateAfterUsefulLife'] as String?,
      manageByQuantity: json['ManageByQuantity'] as String?,
      uoMGroupEntry: json['UoMGroupEntry'] as int?,
      inventoryUoMEntry: json['InventoryUoMEntry'] as int?,
      defaultSalesUoMEntry: json['DefaultSalesUoMEntry'] as dynamic,
      defaultPurchasingUoMEntry: json['DefaultPurchasingUoMEntry'] as dynamic,
      depreciationGroup: json['DepreciationGroup'] as dynamic,
      assetSerialNumber: json['AssetSerialNumber'] as String?,
      inventoryWeight: json['InventoryWeight'] as dynamic,
      inventoryWeightUnit: json['InventoryWeightUnit'] as dynamic,
      inventoryWeight1: json['InventoryWeight1'] as dynamic,
      inventoryWeightUnit1: json['InventoryWeightUnit1'] as dynamic,
      defaultCountingUnit: json['DefaultCountingUnit'] as dynamic,
      countingItemsPerUnit: json['CountingItemsPerUnit'] as int?,
      defaultCountingUoMEntry: json['DefaultCountingUoMEntry'] as dynamic,
      excisable: json['Excisable'] as String?,
      chapterId: json['ChapterID'] as int?,
      scsCode: json['ScsCode'] as dynamic,
      spProdType: json['SpProdType'] as dynamic,
      prodStdCost: json['ProdStdCost'] as int?,
      inCostRollup: json['InCostRollup'] as String?,
      virtualAssetItem: json['VirtualAssetItem'] as String?,
      enforceAssetSerialNumbers: json['EnforceAssetSerialNumbers'] as String?,
      attachmentEntry: json['AttachmentEntry'] as dynamic,
      linkedResource: json['LinkedResource'] as dynamic,
      updateDate: json['UpdateDate'] as String?,
      updateTime: json['UpdateTime'] as String?,
      gstRelevnt: json['GSTRelevnt'] as String?,
      sacEntry: json['SACEntry'] as int?,
      gstTaxCategory: json['GSTTaxCategory'] as String?,
      serviceCategoryEntry: json['ServiceCategoryEntry'] as int?,
      capitalGoodsOnHoldPercent: json['CapitalGoodsOnHoldPercent'] as dynamic,
      capitalGoodsOnHoldLimit: json['CapitalGoodsOnHoldLimit'] as dynamic,
      assessableValue: json['AssessableValue'] as int?,
      assVal4Wtr: json['AssVal4WTR'] as int?,
      soiExcisable: json['SOIExcisable'] as String?,
      tnved: json['TNVED'] as dynamic,
      importedItem: json['ImportedItem'] as String?,
      pricingUnit: json['PricingUnit'] as int?,
      createDate: json['CreateDate'] as String?,
      createTime: json['CreateTime'] as String?,
      nveCode: json['NVECode'] as dynamic,
      ctrSealQty: json['CtrSealQty'] as int?,
      cestCode: json['CESTCode'] as int?,
      legalText: json['LegalText'] as dynamic,
      dataVersion: json['DataVersion'] as int?,
      createQrCodeFrom: json['CreateQRCodeFrom'] as dynamic,
      traceableItem: json['TraceableItem'] as String?,
      commodityClassification: json['CommodityClassification'] as dynamic,
      uType: json['U_Type'] as dynamic,
      uPart: json['U_Part'] as dynamic,
      uChapterId: json['U_ChapterId'] as dynamic,
      uItmRate: json['U_ItmRate'] as dynamic,
      itemPrices: (json['ItemPrices'] as List<dynamic>?)
          ?.map((e) => ItemPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemWarehouseInfoCollection: (json['ItemWarehouseInfoCollection']
              as List<dynamic>?)
          ?.map((e) =>
              ItemWarehouseInfoCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemPreferredVendors: json['ItemPreferredVendors'] as List<dynamic>?,
      itemLocalizationInfos: json['ItemLocalizationInfos'] as List<dynamic>?,
      itemProjects: json['ItemProjects'] as List<dynamic>?,
      itemDistributionRules: json['ItemDistributionRules'] as List<dynamic>?,
      itemAttributeGroups: json['ItemAttributeGroups'] as List<dynamic>?,
      itemDepreciationParameters:
          json['ItemDepreciationParameters'] as List<dynamic>?,
      itemPeriodControls: json['ItemPeriodControls'] as List<dynamic>?,
      itemUnitOfMeasurementCollection:
          (json['ItemUnitOfMeasurementCollection'] as List<dynamic>?)
              ?.map((e) => ItemUnitOfMeasurementCollection.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      itemBarCodeCollection: json['ItemBarCodeCollection'] as List<dynamic>?,
      itemIntrastatExtension: json['ItemIntrastatExtension'] == null
          ? null
          : ItemIntrastatExtension.fromJson(
              json['ItemIntrastatExtension'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'odata': odata,
        'ItemCode': itemCode,
        'ItemName': itemName,
        'ForeignName': foreignName,
        'ItemsGroupCode': itemsGroupCode,
        'CustomsGroupCode': customsGroupCode,
        'SalesVATGroup': salesVatGroup,
        'BarCode': barCode,
        'VatLiable': vatLiable,
        'PurchaseItem': purchaseItem,
        'SalesItem': salesItem,
        'InventoryItem': inventoryItem,
        'IncomeAccount': incomeAccount,
        'ExemptIncomeAccount': exemptIncomeAccount,
        'ExpanseAccount': expanseAccount,
        'Mainsupplier': mainsupplier,
        'SupplierCatalogNo': supplierCatalogNo,
        'DesiredInventory': desiredInventory,
        'MinInventory': minInventory,
        'Picture': picture,
        'User_Text': userText,
        'SerialNum': serialNum,
        'CommissionPercent': commissionPercent,
        'CommissionSum': commissionSum,
        'CommissionGroup': commissionGroup,
        'TreeType': treeType,
        'AssetItem': assetItem,
        'DataExportCode': dataExportCode,
        'Manufacturer': manufacturer,
        'QuantityOnStock': quantityOnStock,
        'QuantityOrderedFromVendors': quantityOrderedFromVendors,
        'QuantityOrderedByCustomers': quantityOrderedByCustomers,
        'ManageSerialNumbers': manageSerialNumbers,
        'ManageBatchNumbers': manageBatchNumbers,
        'Valid': valid,
        'ValidFrom': validFrom,
        'ValidTo': validTo,
        'ValidRemarks': validRemarks,
        'Frozen': frozen,
        'FrozenFrom': frozenFrom,
        'FrozenTo': frozenTo,
        'FrozenRemarks': frozenRemarks,
        'SalesUnit': salesUnit,
        'SalesItemsPerUnit': salesItemsPerUnit,
        'SalesPackagingUnit': salesPackagingUnit,
        'SalesQtyPerPackUnit': salesQtyPerPackUnit,
        'SalesUnitLength': salesUnitLength,
        'SalesLengthUnit': salesLengthUnit,
        'SalesUnitWidth': salesUnitWidth,
        'SalesWidthUnit': salesWidthUnit,
        'SalesUnitHeight': salesUnitHeight,
        'SalesHeightUnit': salesHeightUnit,
        'SalesUnitVolume': salesUnitVolume,
        'SalesVolumeUnit': salesVolumeUnit,
        'SalesUnitWeight': salesUnitWeight,
        'SalesWeightUnit': salesWeightUnit,
        'PurchaseUnit': purchaseUnit,
        'PurchaseItemsPerUnit': purchaseItemsPerUnit,
        'PurchasePackagingUnit': purchasePackagingUnit,
        'PurchaseQtyPerPackUnit': purchaseQtyPerPackUnit,
        'PurchaseUnitLength': purchaseUnitLength,
        'PurchaseLengthUnit': purchaseLengthUnit,
        'PurchaseUnitWidth': purchaseUnitWidth,
        'PurchaseWidthUnit': purchaseWidthUnit,
        'PurchaseUnitHeight': purchaseUnitHeight,
        'PurchaseHeightUnit': purchaseHeightUnit,
        'PurchaseUnitVolume': purchaseUnitVolume,
        'PurchaseVolumeUnit': purchaseVolumeUnit,
        'PurchaseUnitWeight': purchaseUnitWeight,
        'PurchaseWeightUnit': purchaseWeightUnit,
        'PurchaseVATGroup': purchaseVatGroup,
        'SalesFactor1': salesFactor1,
        'SalesFactor2': salesFactor2,
        'SalesFactor3': salesFactor3,
        'SalesFactor4': salesFactor4,
        'PurchaseFactor1': purchaseFactor1,
        'PurchaseFactor2': purchaseFactor2,
        'PurchaseFactor3': purchaseFactor3,
        'PurchaseFactor4': purchaseFactor4,
        'MovingAveragePrice': movingAveragePrice,
        'ForeignRevenuesAccount': foreignRevenuesAccount,
        'ECRevenuesAccount': ecRevenuesAccount,
        'ForeignExpensesAccount': foreignExpensesAccount,
        'ECExpensesAccount': ecExpensesAccount,
        'AvgStdPrice': avgStdPrice,
        'DefaultWarehouse': defaultWarehouse,
        'ShipType': shipType,
        'GLMethod': glMethod,
        'TaxType': taxType,
        'MaxInventory': maxInventory,
        'ManageStockByWarehouse': manageStockByWarehouse,
        'PurchaseHeightUnit1': purchaseHeightUnit1,
        'PurchaseUnitHeight1': purchaseUnitHeight1,
        'PurchaseLengthUnit1': purchaseLengthUnit1,
        'PurchaseUnitLength1': purchaseUnitLength1,
        'PurchaseWeightUnit1': purchaseWeightUnit1,
        'PurchaseUnitWeight1': purchaseUnitWeight1,
        'PurchaseWidthUnit1': purchaseWidthUnit1,
        'PurchaseUnitWidth1': purchaseUnitWidth1,
        'SalesHeightUnit1': salesHeightUnit1,
        'SalesUnitHeight1': salesUnitHeight1,
        'SalesLengthUnit1': salesLengthUnit1,
        'SalesUnitLength1': salesUnitLength1,
        'SalesWeightUnit1': salesWeightUnit1,
        'SalesUnitWeight1': salesUnitWeight1,
        'SalesWidthUnit1': salesWidthUnit1,
        'SalesUnitWidth1': salesUnitWidth1,
        'ForceSelectionOfSerialNumber': forceSelectionOfSerialNumber,
        'ManageSerialNumbersOnReleaseOnly': manageSerialNumbersOnReleaseOnly,
        'WTLiable': wtLiable,
        'CostAccountingMethod': costAccountingMethod,
        'SWW': sww,
        'WarrantyTemplate': warrantyTemplate,
        'IndirectTax': indirectTax,
        'ArTaxCode': arTaxCode,
        'ApTaxCode': apTaxCode,
        'BaseUnitName': baseUnitName,
        'ItemCountryOrg': itemCountryOrg,
        'IssueMethod': issueMethod,
        'SRIAndBatchManageMethod': sriAndBatchManageMethod,
        'IsPhantom': isPhantom,
        'InventoryUOM': inventoryUom,
        'PlanningSystem': planningSystem,
        'ProcurementMethod': procurementMethod,
        'ComponentWarehouse': componentWarehouse,
        'OrderIntervals': orderIntervals,
        'OrderMultiple': orderMultiple,
        'LeadTime': leadTime,
        'MinOrderQuantity': minOrderQuantity,
        'ItemType': itemType,
        'ItemClass': itemClass,
        'OutgoingServiceCode': outgoingServiceCode,
        'IncomingServiceCode': incomingServiceCode,
        'ServiceGroup': serviceGroup,
        'NCMCode': ncmCode,
        'MaterialType': materialType,
        'MaterialGroup': materialGroup,
        'ProductSource': productSource,
        'Properties1': properties1,
        'Properties2': properties2,
        'Properties3': properties3,
        'Properties4': properties4,
        'Properties5': properties5,
        'Properties6': properties6,
        'Properties7': properties7,
        'Properties8': properties8,
        'Properties9': properties9,
        'Properties10': properties10,
        'Properties11': properties11,
        'Properties12': properties12,
        'Properties13': properties13,
        'Properties14': properties14,
        'Properties15': properties15,
        'Properties16': properties16,
        'Properties17': properties17,
        'Properties18': properties18,
        'Properties19': properties19,
        'Properties20': properties20,
        'Properties21': properties21,
        'Properties22': properties22,
        'Properties23': properties23,
        'Properties24': properties24,
        'Properties25': properties25,
        'Properties26': properties26,
        'Properties27': properties27,
        'Properties28': properties28,
        'Properties29': properties29,
        'Properties30': properties30,
        'Properties31': properties31,
        'Properties32': properties32,
        'Properties33': properties33,
        'Properties34': properties34,
        'Properties35': properties35,
        'Properties36': properties36,
        'Properties37': properties37,
        'Properties38': properties38,
        'Properties39': properties39,
        'Properties40': properties40,
        'Properties41': properties41,
        'Properties42': properties42,
        'Properties43': properties43,
        'Properties44': properties44,
        'Properties45': properties45,
        'Properties46': properties46,
        'Properties47': properties47,
        'Properties48': properties48,
        'Properties49': properties49,
        'Properties50': properties50,
        'Properties51': properties51,
        'Properties52': properties52,
        'Properties53': properties53,
        'Properties54': properties54,
        'Properties55': properties55,
        'Properties56': properties56,
        'Properties57': properties57,
        'Properties58': properties58,
        'Properties59': properties59,
        'Properties60': properties60,
        'Properties61': properties61,
        'Properties62': properties62,
        'Properties63': properties63,
        'Properties64': properties64,
        'AutoCreateSerialNumbersOnRelease': autoCreateSerialNumbersOnRelease,
        'DNFEntry': dnfEntry,
        'GTSItemSpec': gtsItemSpec,
        'GTSItemTaxCategory': gtsItemTaxCategory,
        'FuelID': fuelId,
        'BeverageTableCode': beverageTableCode,
        'BeverageGroupCode': beverageGroupCode,
        'BeverageCommercialBrandCode': beverageCommercialBrandCode,
        'Series': series,
        'ToleranceDays': toleranceDays,
        'TypeOfAdvancedRules': typeOfAdvancedRules,
        'IssuePrimarilyBy': issuePrimarilyBy,
        'NoDiscounts': noDiscounts,
        'AssetClass': assetClass,
        'AssetGroup': assetGroup,
        'InventoryNumber': inventoryNumber,
        'Technician': technician,
        'Employee': employee,
        'Location': location,
        'AssetStatus': assetStatus,
        'CapitalizationDate': capitalizationDate,
        'StatisticalAsset': statisticalAsset,
        'Cession': cession,
        'DeactivateAfterUsefulLife': deactivateAfterUsefulLife,
        'ManageByQuantity': manageByQuantity,
        'UoMGroupEntry': uoMGroupEntry,
        'InventoryUoMEntry': inventoryUoMEntry,
        'DefaultSalesUoMEntry': defaultSalesUoMEntry,
        'DefaultPurchasingUoMEntry': defaultPurchasingUoMEntry,
        'DepreciationGroup': depreciationGroup,
        'AssetSerialNumber': assetSerialNumber,
        'InventoryWeight': inventoryWeight,
        'InventoryWeightUnit': inventoryWeightUnit,
        'InventoryWeight1': inventoryWeight1,
        'InventoryWeightUnit1': inventoryWeightUnit1,
        'DefaultCountingUnit': defaultCountingUnit,
        'CountingItemsPerUnit': countingItemsPerUnit,
        'DefaultCountingUoMEntry': defaultCountingUoMEntry,
        'Excisable': excisable,
        'ChapterID': chapterId,
        'ScsCode': scsCode,
        'SpProdType': spProdType,
        'ProdStdCost': prodStdCost,
        'InCostRollup': inCostRollup,
        'VirtualAssetItem': virtualAssetItem,
        'EnforceAssetSerialNumbers': enforceAssetSerialNumbers,
        'AttachmentEntry': attachmentEntry,
        'LinkedResource': linkedResource,
        'UpdateDate': updateDate,
        'UpdateTime': updateTime,
        'GSTRelevnt': gstRelevnt,
        'SACEntry': sacEntry,
        'GSTTaxCategory': gstTaxCategory,
        'ServiceCategoryEntry': serviceCategoryEntry,
        'CapitalGoodsOnHoldPercent': capitalGoodsOnHoldPercent,
        'CapitalGoodsOnHoldLimit': capitalGoodsOnHoldLimit,
        'AssessableValue': assessableValue,
        'AssVal4WTR': assVal4Wtr,
        'SOIExcisable': soiExcisable,
        'TNVED': tnved,
        'ImportedItem': importedItem,
        'PricingUnit': pricingUnit,
        'CreateDate': createDate,
        'CreateTime': createTime,
        'NVECode': nveCode,
        'CtrSealQty': ctrSealQty,
        'CESTCode': cestCode,
        'LegalText': legalText,
        'DataVersion': dataVersion,
        'CreateQRCodeFrom': createQrCodeFrom,
        'TraceableItem': traceableItem,
        'CommodityClassification': commodityClassification,
        'U_Type': uType,
        'U_Part': uPart,
        'U_ChapterId': uChapterId,
        'U_ItmRate': uItmRate,
        'ItemPrices': itemPrices?.map((e) => e.toJson()).toList(),
        'ItemWarehouseInfoCollection':
            itemWarehouseInfoCollection?.map((e) => e.toJson()).toList(),
        'ItemPreferredVendors': itemPreferredVendors,
        'ItemLocalizationInfos': itemLocalizationInfos,
        'ItemProjects': itemProjects,
        'ItemDistributionRules': itemDistributionRules,
        'ItemAttributeGroups': itemAttributeGroups,
        'ItemDepreciationParameters': itemDepreciationParameters,
        'ItemPeriodControls': itemPeriodControls,
        'ItemUnitOfMeasurementCollection':
            itemUnitOfMeasurementCollection?.map((e) => e.toJson()).toList(),
        'ItemBarCodeCollection': itemBarCodeCollection,
        'ItemIntrastatExtension': itemIntrastatExtension?.toJson(),
      };
}
