import 'package:bund/src/core/presentation/loading_indicator.dart';
import 'package:bund/src/investment/application/cubit/income_cubit.dart';
import 'package:bund/src/investment/presentation/custom_button.dart';
import 'package:bund/src/investment/presentation/scrolled_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvestmentBody extends StatefulWidget {
  const InvestmentBody({super.key});

  @override
  State<InvestmentBody> createState() => _InvestmentBodyState();
}

class _InvestmentBodyState extends State<InvestmentBody> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => BlocProvider.of<IncomeCubit>(context).actFetchingData());
  }

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<IncomeCubit>(context);
    return BlocConsumer<IncomeCubit, IncomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(orElse: () {
          return Stack(
            children: [
              ScrolledArea(cubit: cubit, state: state),
              const CustomButton()
            ],
          );
        }, loading: (_) {
          return const Center(
            child: LoadingIndicator(),
          );
        });
      },
    );
  }
}
