import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_sync/core/utils/constants.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      kAssetLogoSvg,
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.primary,
        BlendMode.modulate,
      ),
    );
  }
}
