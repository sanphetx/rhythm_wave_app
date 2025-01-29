import 'package:flutter/material.dart';

import 'package:rhythm_wave_app/core/theme/theme.dart';

class WaveBottomAppBar extends StatelessWidget {
  const WaveBottomAppBar({
    required this.child,
    super.key,
    this.backgroundColor,
    this.height,
  });

  final Color? backgroundColor;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor =
        backgroundColor ?? context.waveTheme.appBarTheme.colors.backgroundColor;

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: effectiveBackgroundColor,
        boxShadow: context.waveShadows.shadow1,
      ),
      child: child,
    );
  }
}
