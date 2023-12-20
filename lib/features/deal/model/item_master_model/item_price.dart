class ItemPrice {
  int? priceList;
  int? price;
  dynamic currency;
  int? additionalPrice1;
  dynamic additionalCurrency1;
  int? additionalPrice2;
  dynamic additionalCurrency2;
  int? basePriceList;
  int? factor;
  List<dynamic>? uoMPrices;

  ItemPrice({
    this.priceList,
    this.price,
    this.currency,
    this.additionalPrice1,
    this.additionalCurrency1,
    this.additionalPrice2,
    this.additionalCurrency2,
    this.basePriceList,
    this.factor,
    this.uoMPrices,
  });

  @override
  String toString() {
    return 'ItemPrice(priceList: $priceList, price: $price, currency: $currency, additionalPrice1: $additionalPrice1, additionalCurrency1: $additionalCurrency1, additionalPrice2: $additionalPrice2, additionalCurrency2: $additionalCurrency2, basePriceList: $basePriceList, factor: $factor, uoMPrices: $uoMPrices)';
  }

  factory ItemPrice.fromJson(Map<String, dynamic> json) => ItemPrice(
        priceList: json['PriceList'] as int?,
        price: json['Price'] as int?,
        currency: json['Currency'] as dynamic,
        additionalPrice1: json['AdditionalPrice1'] as int?,
        additionalCurrency1: json['AdditionalCurrency1'] as dynamic,
        additionalPrice2: json['AdditionalPrice2'] as int?,
        additionalCurrency2: json['AdditionalCurrency2'] as dynamic,
        basePriceList: json['BasePriceList'] as int?,
        factor: json['Factor'] as int?,
        uoMPrices: json['UoMPrices'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'PriceList': priceList,
        'Price': price,
        'Currency': currency,
        'AdditionalPrice1': additionalPrice1,
        'AdditionalCurrency1': additionalCurrency1,
        'AdditionalPrice2': additionalPrice2,
        'AdditionalCurrency2': additionalCurrency2,
        'BasePriceList': basePriceList,
        'Factor': factor,
        'UoMPrices': uoMPrices,
      };
}
