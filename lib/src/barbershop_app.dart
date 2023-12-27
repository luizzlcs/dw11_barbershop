import 'package:asyncstate/asyncstate.dart';
import 'package:dw_barbershop/src/core/ui/barbershop_theme.dart';
import 'package:dw_barbershop/src/features/auth/login/login_page.dart';
import 'package:dw_barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/ui/widgets/barbershop_loader.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
        customLoader: const BarbershopLoader(),
        builder: (asyncNavigatorObserver) {
          return MaterialApp(
            title: 'DW Barbershop',
            theme: BarbershopTheme.themeData,
            navigatorObservers: [asyncNavigatorObserver],
            routes: {
              '/': (context) => const SplashPage(),
              '/auth/login': (context) => const LoginPage(),
              '//home/adm': (context) => const Text('ADM'),
              '/home/employee': (context) => const Text('Employee'),
            },
          );
        });
  }
}
