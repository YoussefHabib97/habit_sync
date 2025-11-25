import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:habit_sync/app/app_router.dart';
import 'package:habit_sync/core/utils/constants.dart';
import 'package:habit_sync/core/utils/widgets/app_logo.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        // TODO: Implement local database init and everything needed to run app smoothly on splash screen
        future: Future(
          () => Future.delayed(Duration(seconds: 3), () {
            appRouter.pushReplacement(kViewOnboarding);
          }),
        ),
        builder: (context, asyncSnapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Animate(
                  child: AppLogoWidget(),
                ).fadeIn(duration: kAnimFadeInDuration.ms),
                SizedBox(height: 24),
                Animate(
                  child: Text(
                    "Initializing...",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ).fadeIn(duration: kAnimFadeInDuration.ms),
                SizedBox(height: 16),
                Animate(
                  child: CircularProgressIndicator.adaptive(),
                ).fadeIn(duration: kAnimFadeInDuration.ms),
              ],
            ),
          );
        },
      ),
    );
  }
}
