import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_sync/core/utils/constants.dart';
import 'package:habit_sync/features/auth/presentation/views/splash_view.dart';
import 'package:habit_sync/features/onboarding/presentation/views/onboarding_view.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: kViewHome, builder: (context, state) => SplashView()),
    GoRoute(
      path: kViewOnboarding,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
                opacity: CurveTween(
                  curve: Curves.easeInOutCirc,
                ).animate(animation),
                child: child,
              ),
          child: OnboardingView(),
        );
      },
    ),
  ],
);
