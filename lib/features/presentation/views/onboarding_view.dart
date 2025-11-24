import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: AnimateList(
                    interval: 750.ms,
                    children: [
                      Icon(
                        Icons.people,
                        size: 196,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Build habits. Grow together.",
                        style: TextStyle(fontSize: 28),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ).fadeIn(duration: 300.ms),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.125),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: AnimateList(
                    interval: 300.ms,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: FilledButton(
                          onPressed: () {},
                          child: Text("Sign in"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Continue as guest"),
                        ),
                      ),
                    ],
                  ).fadeIn(delay: 1.5.seconds),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 96.0),
        child: Animate(
          child: TextButton(onPressed: () {}, child: Text("Why HabitSync?")),
        ).fadeIn(delay: 2.seconds),
      ),
    );
  }
}
