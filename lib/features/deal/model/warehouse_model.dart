class WarehouseModel {
  String? warehouseName;

  WarehouseModel({this.warehouseName});

  @override
  String toString() => 'WarehouseModel(warehouseName: $warehouseName)';

  factory WarehouseModel.fromJson(Map<String, dynamic> json) {
    return WarehouseModel(
      warehouseName: json['WarehouseName'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'WarehouseName': warehouseName,
      };
}
