part of 'income_cubit.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState.initial(
      {@Default(250) double amount, required int term}) = Initial;
  const factory IncomeState.loading(
      {@Default(250) double amount, required int term}) = Loading;
  const factory IncomeState.success(
      {@Default(250) double amount, required int term}) = Success;
  const factory IncomeState.failure(
      {@Default(250) double amount, required int term}) = Failure;
}
