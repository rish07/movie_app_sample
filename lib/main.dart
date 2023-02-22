import 'package:flutter/material.dart';
import 'package:lenskart_test/commons/bloc_injection.dart';
import 'package:lenskart_test/commons/navigation/go_router.dart';
import 'package:lenskart_test/commons/repository_injection.dart';
import 'package:lenskart_test/commons/responsive/responsive.dart';
import 'package:lenskart_test/commons/theme/app_theme.dart';

void main() {
  runApp(
    ResponsiveWidget(
      builder: (context, orientation, deviceType) => const RepositoryInjection(
        child: BlocInjection(
          child: MyApp(),
        ),
      ),
      pixelDensity: false,
      designUISize: const Size(300, 800),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.appTheme,
      routerConfig: router,
    );
  }
}
