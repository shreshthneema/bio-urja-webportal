class ItemUnitOfMeasurementCollection {
  String? uoMType;
  int? uoMEntry;
  int? defaultBarcode;
  dynamic defaultPackage;
  int? length1;
  dynamic length1Unit;
  int? length2;
  dynamic length2Unit;
  int? width1;
  dynamic width1Unit;
  int? width2;
  dynamic width2Unit;
  int? height1;
  dynamic height1Unit;
  int? height2;
  dynamic height2Unit;
  int? volume;
  dynamic volumeUnit;
  int? weight1;
  dynamic weight1Unit;
  int? weight2;
  dynamic weight2Unit;
  List<dynamic>? itemUoMPackageCollection;

  ItemUnitOfMeasurementCollection({
    this.uoMType,
    this.uoMEntry,
    this.defaultBarcode,
    this.defaultPackage,
    this.length1,
    this.length1Unit,
    this.length2,
    this.length2Unit,
    this.width1,
    this.width1Unit,
    this.width2,
    this.width2Unit,
    this.height1,
    this.height1Unit,
    this.height2,
    this.height2Unit,
    this.volume,
    this.volumeUnit,
    this.weight1,
    this.weight1Unit,
    this.weight2,
    this.weight2Unit,
    this.itemUoMPackageCollection,
  });

  @override
  String toString() {
    return 'ItemUnitOfMeasurementCollection(uoMType: $uoMType, uoMEntry: $uoMEntry, defaultBarcode: $defaultBarcode, defaultPackage: $defaultPackage, length1: $length1, length1Unit: $length1Unit, length2: $length2, length2Unit: $length2Unit, width1: $width1, width1Unit: $width1Unit, width2: $width2, width2Unit: $width2Unit, height1: $height1, height1Unit: $height1Unit, height2: $height2, height2Unit: $height2Unit, volume: $volume, volumeUnit: $volumeUnit, weight1: $weight1, weight1Unit: $weight1Unit, weight2: $weight2, weight2Unit: $weight2Unit, itemUoMPackageCollection: $itemUoMPackageCollection)';
  }

  factory ItemUnitOfMeasurementCollection.fromJson(Map<String, dynamic> json) {
    return ItemUnitOfMeasurementCollection(
      uoMType: json['UoMType'] as String?,
      uoMEntry: json['UoMEntry'] as int?,
      defaultBarcode: json['DefaultBarcode'] as int?,
      defaultPackage: json['DefaultPackage'] as dynamic,
      length1: json['Length1'] as int?,
      length1Unit: json['Length1Unit'] as dynamic,
      length2: json['Length2'] as int?,
      length2Unit: json['Length2Unit'] as dynamic,
      width1: json['Width1'] as int?,
      width1Unit: json['Width1Unit'] as dynamic,
      width2: json['Width2'] as int?,
      width2Unit: json['Width2Unit'] as dynamic,
      height1: json['Height1'] as int?,
      height1Unit: json['Height1Unit'] as dynamic,
      height2: json['Height2'] as int?,
      height2Unit: json['Height2Unit'] as dynamic,
      volume: json['Volume'] as int?,
      volumeUnit: json['VolumeUnit'] as dynamic,
      weight1: json['Weight1'] as int?,
      weight1Unit: json['Weight1Unit'] as dynamic,
      weight2: json['Weight2'] as int?,
      weight2Unit: json['Weight2Unit'] as dynamic,
      itemUoMPackageCollection:
          json['ItemUoMPackageCollection'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'UoMType': uoMType,
        'UoMEntry': uoMEntry,
        'DefaultBarcode': defaultBarcode,
        'DefaultPackage': defaultPackage,
        'Length1': length1,
        'Length1Unit': length1Unit,
        'Length2': length2,
        'Length2Unit': length2Unit,
        'Width1': width1,
        'Width1Unit': width1Unit,
        'Width2': width2,
        'Width2Unit': width2Unit,
        'Height1': height1,
        'Height1Unit': height1Unit,
        'Height2': height2,
        'Height2Unit': height2Unit,
        'Volume': volume,
        'VolumeUnit': volumeUnit,
        'Weight1': weight1,
        'Weight1Unit': weight1Unit,
        'Weight2': weight2,
        'Weight2Unit': weight2Unit,
        'ItemUoMPackageCollection': itemUoMPackageCollection,
      };
}
