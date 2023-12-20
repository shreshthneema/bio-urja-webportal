part of 'deal_bloc.dart';

sealed class DealEvent {
  const DealEvent();

  @override
  List<Object> get props => [];
}

final class FetchDeal extends DealEvent {}

final class FetchDealFieldData extends DealEvent {}
