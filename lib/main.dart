import 'package:bund/src/core/presentation/app_widget.dart';
import 'package:bund/src/investment/application/cubit/income_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BlocProvider(
    create: (context) => IncomeCubit(),
    child: const Bund(),
  ));
}
