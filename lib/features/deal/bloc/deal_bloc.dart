import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webportal_biourja_flutter/features/buy_sell_portal/view/main.dart';
import 'package:webportal_biourja_flutter/features/deal/model/business_partner_main_model/business_partner_main_model.dart';
import 'package:webportal_biourja_flutter/features/deal/model/item_master_model/item_master_model.dart';
import 'package:webportal_biourja_flutter/features/deal/model/warehouse_model.dart';
import '../repository/interface_deal_repository.dart';
import '../../../core/network/error_handling.dart';

part 'deal_event.dart';
part 'deal_state.dart';

class DealBloc extends Bloc<DealEvent, DealState> {
  final IDealRepository dealService;
  DealBloc({required this.dealService}) : super(DealInitial()) {
    on<FetchDealFieldData>((event, emit) async {
      emit(DealLoading());
      try {
        final data = await Future.wait([
          dealService.getBusinessPartners(),
          dealService.getWarehouses(),
          dealService.getItemMaster(),
        ]);

        emit(
          DealSuccess(UDFFilledDataFetchModel(
            businessPartners: data[0] as List<BusinessPartnerMainModel>?,
            warehouses: data[1] as List<WarehouseModel>?,
            itemMasters: data[2] as List<ItemMasterModel>?,
          )),
        );
      } on CustomException catch (e) {
        emit(DealFetchError(error: e.toString()));
      }
    });
  }
}
