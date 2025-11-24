import 'package:flutter/material.dart';
import 'package:habit_sync/app/app_router.dart';

class ApplicationRoot extends StatelessWidget {
  const ApplicationRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HabitSync',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0B84FF)),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      routerConfig: appRouter,
    );
  }
}
