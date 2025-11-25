import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingAnimatedColumn extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Duration? intervalBetweenElements, animationDuration, delay;
  final List<Widget> children;
  const OnboardingAnimatedColumn({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.intervalBetweenElements,
    this.animationDuration,
    this.delay,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: AnimateList(
        interval: intervalBetweenElements,
        children: children,
      ).fadeIn(duration: animationDuration, delay: delay),
    );
  }
}
