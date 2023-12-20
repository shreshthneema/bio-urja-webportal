import '../model/item_master_model/item_master_model.dart';
import '../model/warehouse_model.dart';

import '../../../core/di/get_it_setup.dart';
import '../../../core/network/api_service.dart';
import '../model/business_partner_main_model/business_partner_main_model.dart';

import 'interface_deal_repository.dart';

class DealRepository extends IDealRepository {
  DealRepository();

  final ApiService api = getIt<ApiService>();

  @override
  Future<List<BusinessPartnerMainModel>> getBusinessPartners() async {
    final response = await api.getCollectionData(
      endpoint: '/BusinessPartners',
      converter: BusinessPartnerMainModel.fromJson,
      queryParams: {
        '\$select':
            'CardCode, CardType,CardName,Properties1,Properties2,ContactEmployees',
      },
      headers: {
        'prefer': 'odata.maxpagesize=1500',
      },
    );

    return response;
  }

  @override
  Future<List<WarehouseModel>> getWarehouses() async {
    final response = await api.getCollectionData(
      endpoint: '/Warehouses',
      converter: WarehouseModel.fromJson,
      queryParams: {
        '\$select': 'WarehouseName',
      },
    );

    return response;
  }

  @override
  Future<List<ItemMasterModel>> getItemMaster() async {
    final response = await api.getCollectionData(
      endpoint: '/Items',
      converter: ItemMasterModel.fromJson,
      queryParams: {
        '\$select': 'ItemName',
      },
    );

    return response;
  }
}
