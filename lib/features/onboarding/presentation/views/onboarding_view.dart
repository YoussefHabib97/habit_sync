import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:habit_sync/core/utils/widgets/animated_column.dart';
import 'package:habit_sync/core/utils/widgets/app_logo.dart';
import 'package:habit_sync/core/utils/widgets/app_logo_text.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Animation timer start: 0sec
              AnimatedColumn(
                animationDuration: 300.ms,
                delay: 500.ms,
                children: [AppLogoWidget(), AppLogoText()],
              ),
              SizedBox(height: 32),

              // Animation timer - time passed: 300ms
              Animate(
                child: Text(
                  "Build habits. Grow together.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ).fadeIn(delay: 500.ms),
              SizedBox(height: MediaQuery.of(context).size.height * 0.125),

              // Animation timer - time passed: 800ms
              AnimatedColumn(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                intervalBetweenElements: 300.ms,
                animationDuration: 300.ms,
                delay: 1.6.seconds,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 64.0,
                    ),
                    child: FilledButton(
                      onPressed: () {},
                      child: Text("Sign in"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 64.0,
                      right: 64.0,
                      top: 4.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Continue as guest"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 96.0,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Why HabitSync?"),
                    ),
                  ),
                ],
              ),
              // Animation timer - time passed: 2400ms
            ],
          ),
        ),
      ),
    );
  }
}
