import 'package:flutter/material.dart';
import 'package:habit_sync/app/app_router.dart';
import 'package:habit_sync/app/themes.dart';
import 'package:habit_sync/core/constants.dart';

class ApplicationRoot extends StatelessWidget {
  const ApplicationRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HabitSync',
      themeMode: ThemeMode.system,
      theme: buildTheme(kLightThemeSeed, Brightness.light),
      darkTheme: buildTheme(kDarkThemeSeed, Brightness.dark),
      routerConfig: appRouter,
    );
  }
}
