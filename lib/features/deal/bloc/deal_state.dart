part of 'deal_bloc.dart';

sealed class DealState {
  const DealState();

  List<Object> get props => [];
}

final class DealInitial extends DealState {}

final class DealSuccess extends DealState {
  // ignore: prefer_typing_uninitialized_variables
  final UDFFilledDataFetchModel data;
  const DealSuccess(this.data);

  @override
  List<Object> get props => [data];
}

final class DealLoading extends DealState {}

final class DealFetchError extends DealState {
  const DealFetchError({required this.error});
  final String error;
  @override
  String toString() => error;

  @override
  List<Object> get props => [error];
}
