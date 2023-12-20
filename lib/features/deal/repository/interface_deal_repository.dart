import 'package:webportal_biourja_flutter/features/deal/model/item_master_model/item_master_model.dart';

import '../model/warehouse_model.dart';

import '../model/business_partner_main_model/business_partner_main_model.dart';

abstract class IDealRepository {
  IDealRepository();

  Future<List<BusinessPartnerMainModel>> getBusinessPartners();
  Future<List<WarehouseModel>> getWarehouses();
  Future<List<ItemMasterModel>> getItemMaster();
}
