import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'income_state.dart';
part 'income_cubit.freezed.dart';

class IncomeCubit extends Cubit<IncomeState> {
  IncomeCubit() : super(const IncomeState.initial(term: 3));
  final double annualYieldMaturityPercent = 6.81;
  int term = 3;
  double _capitalAtMaturity = 301;
  double _amount = 250;
  double _totalInterest = 51;
  double _annualInterest = 17.0;
  final DateTime _averageMaturityDate = DateTime.now();
  bool isPressed = false;
  bool isChipSelected = true;

  final NumberFormat _currencyFormat =
      NumberFormat.currency(symbol: '\$', decimalDigits: 0);

  String get getAmount {
    return _currencyFormat.format(_amount);
  }

  String get getCapitalAtMaturity {
    return _currencyFormat.format(_capitalAtMaturity);
  }

  String get getAnnualInterest {
    return _currencyFormat.format(_annualInterest);
  }

  String get getTotalInterest {
    return _currencyFormat.format(_totalInterest);
  }

  String get getAverageMaturityDate {
    return _averageMaturityDate.add(Duration(days: 365 * term)).year.toString();
  }

  void updateValues() {
    _capitalAtMaturity =
        (annualYieldMaturityPercent / 100 * term * _amount) + _amount;
    _totalInterest = annualYieldMaturityPercent / 100 * term * _amount;
    _annualInterest = _amount * annualYieldMaturityPercent / 100;
  }

  void increaseAmount() {
    if (_amount >= 250 && _amount <= 750) {
      _amount += 250;
      emit(IncomeState.success(amount: _amount, term: term));
    } else if (_amount < 10000 && _amount >= 1000) {
      _amount += 1000;
      emit(IncomeState.success(amount: _amount, term: term));
    } else if (_amount >= 10000) {
      _amount += 10000;
      emit(IncomeState.success(amount: _amount, term: term));
    }
    updateValues();
  }

  void decreaseAmount() {
    if (_amount > 250 && _amount <= 1000) {
      _amount -= 250;
      emit(IncomeState.success(amount: _amount, term: term));
    } else if (_amount <= 10000 && _amount >= 1000) {
      _amount -= 1000;
      emit(IncomeState.success(amount: _amount, term: term));
    } else if (_amount > 10000) {
      _amount -= 10000;
      emit(IncomeState.success(amount: _amount, term: term));
    }
    updateValues();
  }

  void reIncreasing() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (isPressed) {
        increaseAmount();
      } else {
        timer.cancel();
      }
    });
  }

  void reDecreasing() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (isPressed) {
        decreaseAmount();
      } else {
        timer.cancel();
      }
    });
  }

  updateTerm(int newTerm) {
    term = newTerm;
    updateValues();
    emit(IncomeState.success(term: newTerm));
  }

  Future<void> actFetchingData() async {
    emit(Loading(term: term, amount: _amount));
    await Future.delayed(const Duration(milliseconds: 800));
    emit(Success(term: term, amount: _amount));
  }
}
