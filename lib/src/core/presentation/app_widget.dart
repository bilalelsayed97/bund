import 'package:bund/src/core/presentation/routes/app_router.dart';
import 'package:bund/src/core/utility/theme.dart';
import 'package:flutter/material.dart';

class Bund extends StatelessWidget {
  const Bund({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouterSingleton().appRouter;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bund',
      theme: themeData,
      routerConfig: appRouter.config(),
    );
  }
}
