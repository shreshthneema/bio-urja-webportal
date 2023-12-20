class ItemWarehouseInfoCollection {
  int? minimalStock;
  int? maximalStock;
  int? minimalOrder;
  int? standardAveragePrice;
  String? locked;
  dynamic inventoryAccount;
  dynamic costAccount;
  dynamic transferAccount;
  dynamic revenuesAccount;
  dynamic varienceAccount;
  dynamic decreasingAccount;
  dynamic increasingAccount;
  dynamic returningAccount;
  dynamic expensesAccount;
  dynamic euRevenuesAccount;
  dynamic euExpensesAccount;
  dynamic foreignRevenueAcc;
  dynamic foreignExpensAcc;
  dynamic exemptIncomeAcc;
  dynamic priceDifferenceAcc;
  String? warehouseCode;
  int? inStock;
  int? committed;
  int? ordered;
  int? countedQuantity;
  String? wasCounted;
  int? userSignature;
  int? counted;
  dynamic expenseClearingAct;
  dynamic purchaseCreditAcc;
  dynamic euPurchaseCreditAcc;
  dynamic foreignPurchaseCreditAcc;
  dynamic salesCreditAcc;
  dynamic salesCreditEuAcc;
  dynamic exemptedCredits;
  dynamic salesCreditForeignAcc;
  dynamic expenseOffsettingAccount;
  dynamic wipAccount;
  dynamic exchangeRateDifferencesAcct;
  dynamic goodsClearingAcct;
  dynamic negativeInventoryAdjustmentAccount;
  dynamic costInflationOffsetAccount;
  dynamic glDecreaseAcct;
  dynamic glIncreaseAcct;
  dynamic paReturnAcct;
  dynamic purchaseAcct;
  dynamic purchaseOffsetAcct;
  dynamic shippedGoodsAccount;
  dynamic stockInflationOffsetAccount;
  dynamic stockInflationAdjustAccount;
  dynamic vatInRevenueAccount;
  dynamic wipVarianceAccount;
  dynamic costInflationAccount;
  dynamic whIncomingCenvatAccount;
  dynamic whOutgoingCenvatAccount;
  dynamic stockInTransitAccount;
  dynamic wipOffsetProfitAndLossAccount;
  dynamic inventoryOffsetProfitAndLossAccount;
  dynamic defaultBin;
  String? defaultBinEnforced;
  dynamic purchaseBalanceAccount;
  String? itemCode;
  String? indEscala;
  dynamic cnjpMan;
  List<dynamic>? itemCycleCounts;

  ItemWarehouseInfoCollection({
    this.minimalStock,
    this.maximalStock,
    this.minimalOrder,
    this.standardAveragePrice,
    this.locked,
    this.inventoryAccount,
    this.costAccount,
    this.transferAccount,
    this.revenuesAccount,
    this.varienceAccount,
    this.decreasingAccount,
    this.increasingAccount,
    this.returningAccount,
    this.expensesAccount,
    this.euRevenuesAccount,
    this.euExpensesAccount,
    this.foreignRevenueAcc,
    this.foreignExpensAcc,
    this.exemptIncomeAcc,
    this.priceDifferenceAcc,
    this.warehouseCode,
    this.inStock,
    this.committed,
    this.ordered,
    this.countedQuantity,
    this.wasCounted,
    this.userSignature,
    this.counted,
    this.expenseClearingAct,
    this.purchaseCreditAcc,
    this.euPurchaseCreditAcc,
    this.foreignPurchaseCreditAcc,
    this.salesCreditAcc,
    this.salesCreditEuAcc,
    this.exemptedCredits,
    this.salesCreditForeignAcc,
    this.expenseOffsettingAccount,
    this.wipAccount,
    this.exchangeRateDifferencesAcct,
    this.goodsClearingAcct,
    this.negativeInventoryAdjustmentAccount,
    this.costInflationOffsetAccount,
    this.glDecreaseAcct,
    this.glIncreaseAcct,
    this.paReturnAcct,
    this.purchaseAcct,
    this.purchaseOffsetAcct,
    this.shippedGoodsAccount,
    this.stockInflationOffsetAccount,
    this.stockInflationAdjustAccount,
    this.vatInRevenueAccount,
    this.wipVarianceAccount,
    this.costInflationAccount,
    this.whIncomingCenvatAccount,
    this.whOutgoingCenvatAccount,
    this.stockInTransitAccount,
    this.wipOffsetProfitAndLossAccount,
    this.inventoryOffsetProfitAndLossAccount,
    this.defaultBin,
    this.defaultBinEnforced,
    this.purchaseBalanceAccount,
    this.itemCode,
    this.indEscala,
    this.cnjpMan,
    this.itemCycleCounts,
  });

  @override
  String toString() {
    return 'ItemWarehouseInfoCollection(minimalStock: $minimalStock, maximalStock: $maximalStock, minimalOrder: $minimalOrder, standardAveragePrice: $standardAveragePrice, locked: $locked, inventoryAccount: $inventoryAccount, costAccount: $costAccount, transferAccount: $transferAccount, revenuesAccount: $revenuesAccount, varienceAccount: $varienceAccount, decreasingAccount: $decreasingAccount, increasingAccount: $increasingAccount, returningAccount: $returningAccount, expensesAccount: $expensesAccount, euRevenuesAccount: $euRevenuesAccount, euExpensesAccount: $euExpensesAccount, foreignRevenueAcc: $foreignRevenueAcc, foreignExpensAcc: $foreignExpensAcc, exemptIncomeAcc: $exemptIncomeAcc, priceDifferenceAcc: $priceDifferenceAcc, warehouseCode: $warehouseCode, inStock: $inStock, committed: $committed, ordered: $ordered, countedQuantity: $countedQuantity, wasCounted: $wasCounted, userSignature: $userSignature, counted: $counted, expenseClearingAct: $expenseClearingAct, purchaseCreditAcc: $purchaseCreditAcc, euPurchaseCreditAcc: $euPurchaseCreditAcc, foreignPurchaseCreditAcc: $foreignPurchaseCreditAcc, salesCreditAcc: $salesCreditAcc, salesCreditEuAcc: $salesCreditEuAcc, exemptedCredits: $exemptedCredits, salesCreditForeignAcc: $salesCreditForeignAcc, expenseOffsettingAccount: $expenseOffsettingAccount, wipAccount: $wipAccount, exchangeRateDifferencesAcct: $exchangeRateDifferencesAcct, goodsClearingAcct: $goodsClearingAcct, negativeInventoryAdjustmentAccount: $negativeInventoryAdjustmentAccount, costInflationOffsetAccount: $costInflationOffsetAccount, glDecreaseAcct: $glDecreaseAcct, glIncreaseAcct: $glIncreaseAcct, paReturnAcct: $paReturnAcct, purchaseAcct: $purchaseAcct, purchaseOffsetAcct: $purchaseOffsetAcct, shippedGoodsAccount: $shippedGoodsAccount, stockInflationOffsetAccount: $stockInflationOffsetAccount, stockInflationAdjustAccount: $stockInflationAdjustAccount, vatInRevenueAccount: $vatInRevenueAccount, wipVarianceAccount: $wipVarianceAccount, costInflationAccount: $costInflationAccount, whIncomingCenvatAccount: $whIncomingCenvatAccount, whOutgoingCenvatAccount: $whOutgoingCenvatAccount, stockInTransitAccount: $stockInTransitAccount, wipOffsetProfitAndLossAccount: $wipOffsetProfitAndLossAccount, inventoryOffsetProfitAndLossAccount: $inventoryOffsetProfitAndLossAccount, defaultBin: $defaultBin, defaultBinEnforced: $defaultBinEnforced, purchaseBalanceAccount: $purchaseBalanceAccount, itemCode: $itemCode, indEscala: $indEscala, cnjpMan: $cnjpMan, itemCycleCounts: $itemCycleCounts)';
  }

  factory ItemWarehouseInfoCollection.fromJson(Map<String, dynamic> json) {
    return ItemWarehouseInfoCollection(
      minimalStock: json['MinimalStock'] as int?,
      maximalStock: json['MaximalStock'] as int?,
      minimalOrder: json['MinimalOrder'] as int?,
      standardAveragePrice: json['StandardAveragePrice'] as int?,
      locked: json['Locked'] as String?,
      inventoryAccount: json['InventoryAccount'] as dynamic,
      costAccount: json['CostAccount'] as dynamic,
      transferAccount: json['TransferAccount'] as dynamic,
      revenuesAccount: json['RevenuesAccount'] as dynamic,
      varienceAccount: json['VarienceAccount'] as dynamic,
      decreasingAccount: json['DecreasingAccount'] as dynamic,
      increasingAccount: json['IncreasingAccount'] as dynamic,
      returningAccount: json['ReturningAccount'] as dynamic,
      expensesAccount: json['ExpensesAccount'] as dynamic,
      euRevenuesAccount: json['EURevenuesAccount'] as dynamic,
      euExpensesAccount: json['EUExpensesAccount'] as dynamic,
      foreignRevenueAcc: json['ForeignRevenueAcc'] as dynamic,
      foreignExpensAcc: json['ForeignExpensAcc'] as dynamic,
      exemptIncomeAcc: json['ExemptIncomeAcc'] as dynamic,
      priceDifferenceAcc: json['PriceDifferenceAcc'] as dynamic,
      warehouseCode: json['WarehouseCode'] as String?,
      inStock: json['InStock'] as int?,
      committed: json['Committed'] as int?,
      ordered: json['Ordered'] as int?,
      countedQuantity: json['CountedQuantity'] as int?,
      wasCounted: json['WasCounted'] as String?,
      userSignature: json['UserSignature'] as int?,
      counted: json['Counted'] as int?,
      expenseClearingAct: json['ExpenseClearingAct'] as dynamic,
      purchaseCreditAcc: json['PurchaseCreditAcc'] as dynamic,
      euPurchaseCreditAcc: json['EUPurchaseCreditAcc'] as dynamic,
      foreignPurchaseCreditAcc: json['ForeignPurchaseCreditAcc'] as dynamic,
      salesCreditAcc: json['SalesCreditAcc'] as dynamic,
      salesCreditEuAcc: json['SalesCreditEUAcc'] as dynamic,
      exemptedCredits: json['ExemptedCredits'] as dynamic,
      salesCreditForeignAcc: json['SalesCreditForeignAcc'] as dynamic,
      expenseOffsettingAccount: json['ExpenseOffsettingAccount'] as dynamic,
      wipAccount: json['WipAccount'] as dynamic,
      exchangeRateDifferencesAcct:
          json['ExchangeRateDifferencesAcct'] as dynamic,
      goodsClearingAcct: json['GoodsClearingAcct'] as dynamic,
      negativeInventoryAdjustmentAccount:
          json['NegativeInventoryAdjustmentAccount'] as dynamic,
      costInflationOffsetAccount: json['CostInflationOffsetAccount'] as dynamic,
      glDecreaseAcct: json['GLDecreaseAcct'] as dynamic,
      glIncreaseAcct: json['GLIncreaseAcct'] as dynamic,
      paReturnAcct: json['PAReturnAcct'] as dynamic,
      purchaseAcct: json['PurchaseAcct'] as dynamic,
      purchaseOffsetAcct: json['PurchaseOffsetAcct'] as dynamic,
      shippedGoodsAccount: json['ShippedGoodsAccount'] as dynamic,
      stockInflationOffsetAccount:
          json['StockInflationOffsetAccount'] as dynamic,
      stockInflationAdjustAccount:
          json['StockInflationAdjustAccount'] as dynamic,
      vatInRevenueAccount: json['VATInRevenueAccount'] as dynamic,
      wipVarianceAccount: json['WipVarianceAccount'] as dynamic,
      costInflationAccount: json['CostInflationAccount'] as dynamic,
      whIncomingCenvatAccount: json['WHIncomingCenvatAccount'] as dynamic,
      whOutgoingCenvatAccount: json['WHOutgoingCenvatAccount'] as dynamic,
      stockInTransitAccount: json['StockInTransitAccount'] as dynamic,
      wipOffsetProfitAndLossAccount:
          json['WipOffsetProfitAndLossAccount'] as dynamic,
      inventoryOffsetProfitAndLossAccount:
          json['InventoryOffsetProfitAndLossAccount'] as dynamic,
      defaultBin: json['DefaultBin'] as dynamic,
      defaultBinEnforced: json['DefaultBinEnforced'] as String?,
      purchaseBalanceAccount: json['PurchaseBalanceAccount'] as dynamic,
      itemCode: json['ItemCode'] as String?,
      indEscala: json['IndEscala'] as String?,
      cnjpMan: json['CNJPMan'] as dynamic,
      itemCycleCounts: json['ItemCycleCounts'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'MinimalStock': minimalStock,
        'MaximalStock': maximalStock,
        'MinimalOrder': minimalOrder,
        'StandardAveragePrice': standardAveragePrice,
        'Locked': locked,
        'InventoryAccount': inventoryAccount,
        'CostAccount': costAccount,
        'TransferAccount': transferAccount,
        'RevenuesAccount': revenuesAccount,
        'VarienceAccount': varienceAccount,
        'DecreasingAccount': decreasingAccount,
        'IncreasingAccount': increasingAccount,
        'ReturningAccount': returningAccount,
        'ExpensesAccount': expensesAccount,
        'EURevenuesAccount': euRevenuesAccount,
        'EUExpensesAccount': euExpensesAccount,
        'ForeignRevenueAcc': foreignRevenueAcc,
        'ForeignExpensAcc': foreignExpensAcc,
        'ExemptIncomeAcc': exemptIncomeAcc,
        'PriceDifferenceAcc': priceDifferenceAcc,
        'WarehouseCode': warehouseCode,
        'InStock': inStock,
        'Committed': committed,
        'Ordered': ordered,
        'CountedQuantity': countedQuantity,
        'WasCounted': wasCounted,
        'UserSignature': userSignature,
        'Counted': counted,
        'ExpenseClearingAct': expenseClearingAct,
        'PurchaseCreditAcc': purchaseCreditAcc,
        'EUPurchaseCreditAcc': euPurchaseCreditAcc,
        'ForeignPurchaseCreditAcc': foreignPurchaseCreditAcc,
        'SalesCreditAcc': salesCreditAcc,
        'SalesCreditEUAcc': salesCreditEuAcc,
        'ExemptedCredits': exemptedCredits,
        'SalesCreditForeignAcc': salesCreditForeignAcc,
        'ExpenseOffsettingAccount': expenseOffsettingAccount,
        'WipAccount': wipAccount,
        'ExchangeRateDifferencesAcct': exchangeRateDifferencesAcct,
        'GoodsClearingAcct': goodsClearingAcct,
        'NegativeInventoryAdjustmentAccount':
            negativeInventoryAdjustmentAccount,
        'CostInflationOffsetAccount': costInflationOffsetAccount,
        'GLDecreaseAcct': glDecreaseAcct,
        'GLIncreaseAcct': glIncreaseAcct,
        'PAReturnAcct': paReturnAcct,
        'PurchaseAcct': purchaseAcct,
        'PurchaseOffsetAcct': purchaseOffsetAcct,
        'ShippedGoodsAccount': shippedGoodsAccount,
        'StockInflationOffsetAccount': stockInflationOffsetAccount,
        'StockInflationAdjustAccount': stockInflationAdjustAccount,
        'VATInRevenueAccount': vatInRevenueAccount,
        'WipVarianceAccount': wipVarianceAccount,
        'CostInflationAccount': costInflationAccount,
        'WHIncomingCenvatAccount': whIncomingCenvatAccount,
        'WHOutgoingCenvatAccount': whOutgoingCenvatAccount,
        'StockInTransitAccount': stockInTransitAccount,
        'WipOffsetProfitAndLossAccount': wipOffsetProfitAndLossAccount,
        'InventoryOffsetProfitAndLossAccount':
            inventoryOffsetProfitAndLossAccount,
        'DefaultBin': defaultBin,
        'DefaultBinEnforced': defaultBinEnforced,
        'PurchaseBalanceAccount': purchaseBalanceAccount,
        'ItemCode': itemCode,
        'IndEscala': indEscala,
        'CNJPMan': cnjpMan,
        'ItemCycleCounts': itemCycleCounts,
      };
}
